#!/bin/bash

# run this script after initializing the consumer chain / after you ran the provided install script

wetezd init --home ~/TMP
PUBKEY=$(wetezd --home ~/TMP tendermint show-validator)
cp ~/TMP/config/priv_validator_key.json ~/.wetez/config
rm -r ~/TMP
echo "new key generated at $HOME/.wetez/config/priv_validator_key.json"
echo "pubkey:"
echo "*****************************************"
echo $PUBKEY
echo "*****************************************"