
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_ccmp_data {scalar_t__ tfm; } ;


 int crypto_free_cipher (void*) ;
 int kfree (void*) ;

__attribute__((used)) static void ieee80211_ccmp_deinit(void *priv)
{
 struct ieee80211_ccmp_data *_priv = priv;

 if (_priv && _priv->tfm)
  crypto_free_cipher((void *)_priv->tfm);
 kfree(priv);
}
