
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ieee80211_crypt_tkip ;
 int ieee80211_register_crypto_ops (int *) ;

int ieee80211_crypto_tkip_init(void)
{
 return ieee80211_register_crypto_ops(&ieee80211_crypt_tkip);
}
