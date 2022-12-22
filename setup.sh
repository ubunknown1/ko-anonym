#!/bin/sh
# This script sets up "anonymous" for Ubuntu custom setup.

echo ""
echo "Anonyme for Ubuntu, Modifisert versjon"
echo ""
echo "[*] oppdaterer systemet  ..."
echo ""
apt update
echo ""
echo "[+] System er oppdatert !"
echo ""
read -p "Er Tor Installert? [Y/n] (N hvis du er usikker) " tor
case $tor in
	[Nn]* ) apt install tor -y; break;;
	[Yy]* ) break;;
       	* ) echo "Du trykket ikke på y eller n! Idiot"; break;;
esac;
read -p "Er MacChanger Installert? [Y/n] (N hvis du er usikker) " tor
case $tor in
	[Nn]* ) apt install macchanger -y; break;;
	[Yy]* ) break;;
        * ) echo "Du trykket ikke på y eller n! Idiot"; break;;
esac;


# Copying files to needed locations
echo "[.] Kopierer over ko-anonym og anonym ..."
cp anonym /usr/sbin/anonym
cp ko-anonym /etc/default/ko-anonym
echo "[*] Ferdig !"
echo
echo "[.] Gir kopierte filer rettigheter ..."
chmod +x /usr/sbin/anonym
chmod +x /etc/default/ko-anonym
echo "[*] Ferdig !"

# Finish
echo "Installering burde være vellykket"
echo "Du kan nå slette installasjons filene;"
echo "De er ubrukelige nå..."
echo ""
echo "Men du kan beholde update.sh og eller setup.sh."
echo "Bruk anonymous Commandoer i terminal ved følgende kommandoer"
echo "------------------------------"
echo "Start: sudo anonym start "
echo "Stop: sudo anonym stop  "
echo "Status: sudo anonym status"
echo "Oppdater: sudo anonym update"
echo "------------------------------"
echo "Installasjon Ferdig!"
echo "Les ovenfor for hjelp med script ..."

