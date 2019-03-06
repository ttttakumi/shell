#!/bin/sh

HELPER=`/Library/Application\ Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper -windowType hud -windowPosition "lr" -title "Softwareupdate" -description "アップデート？" -button1 "はい" -button2 "後で" -cancelButton "2"`

      echo "jamf helper result was $HELPER";

      if [ "$HELPER" == "0" ]; then
         jamf policy -trigger ASWU
         exit 0
      else
         echo "user chose No";
     exit 1
      fi
exit 0