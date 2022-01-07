
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int wep_rx_tfm; int wep_tx_tfm; } ;


 int IS_ERR (int ) ;
 int crypto_free_cipher (int ) ;

void ieee80211_wep_free(struct ieee80211_local *local)
{
 if (!IS_ERR(local->wep_tx_tfm))
  crypto_free_cipher(local->wep_tx_tfm);
 if (!IS_ERR(local->wep_rx_tfm))
  crypto_free_cipher(local->wep_rx_tfm);
}
