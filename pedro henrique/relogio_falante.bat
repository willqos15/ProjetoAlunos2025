@echo off
title Relogio Falante
for /f "tokens=1-2 delims=:" %%a in ("%time%") do set h=%%a& set m=%%b
set texto=Agora sao %h% horas e %m% minutos.
powershell -Command "Add-Type -AssemblyName System.speech; $s=new-object System.Speech.Synthesis.SpeechSynthesizer; $s.Speak('%texto%')"
