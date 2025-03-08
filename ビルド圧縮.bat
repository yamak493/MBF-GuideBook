@echo off
set "sourceFolder=./build/*"  REM 圧縮したいフォルダのパス
set "zipFilePath=./build.zip"  REM 出力するZIPファイルのパス

REM 既にZIPファイルが存在する場合、削除する
if exist "%zipFilePath%" del "%zipFilePath%"

REM PowerShellを使用してフォルダをZIP圧縮
powershell -command "Compress-Archive -Path '%sourceFolder%' -DestinationPath '%zipFilePath%'"

echo 圧縮が完了しました。
