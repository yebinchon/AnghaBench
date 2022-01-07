
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_network {int capability; } ;
struct ieee80211_device {int wpa_ie_len; size_t tx_keyidx; int* wpa_ie; scalar_t__ host_encrypt; struct ieee80211_crypt_data** crypt; struct ieee80211_network current_network; } ;
struct ieee80211_crypt_data {TYPE_1__* ops; } ;
struct TYPE_2__ {int name; } ;


 int TRUE ;
 int WLAN_CAPABILITY_PRIVACY ;
 int ccmp_ie ;
 int ccmp_rsn_ie ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memcmp (int*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;

bool GetNmodeSupportBySecCfg8192(struct net_device*dev)
{

 struct r8192_priv* priv = ieee80211_priv(dev);
 struct ieee80211_device* ieee = priv->ieee80211;
 struct ieee80211_network * network = &ieee->current_network;
        int wpa_ie_len= ieee->wpa_ie_len;
        struct ieee80211_crypt_data* crypt;
        int encrypt;
 return TRUE;

        crypt = ieee->crypt[ieee->tx_keyidx];

        encrypt = (network->capability & WLAN_CAPABILITY_PRIVACY) || (ieee->host_encrypt && crypt && crypt->ops && (0 == strcmp(crypt->ops->name,"WEP")));


 if(encrypt && (wpa_ie_len == 0)) {

  return 0;

 } else if((wpa_ie_len != 0)) {


  if (((ieee->wpa_ie[0] == 0xdd) && (!memcmp(&(ieee->wpa_ie[14]),ccmp_ie,4))) || ((ieee->wpa_ie[0] == 0x30) && (!memcmp(&ieee->wpa_ie[10],ccmp_rsn_ie, 4))))
   return 1;
  else
   return 0;
 } else {
  return 1;
 }

 return 1;

}
