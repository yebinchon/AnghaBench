
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ieee80211_crypt_ccmp ;
 int ieee80211_unregister_crypto_ops (int *) ;

void ieee80211_crypto_ccmp_exit(void)
{
 ieee80211_unregister_crypto_ops(&ieee80211_crypt_ccmp);
}
