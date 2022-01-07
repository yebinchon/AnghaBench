
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ieee80211_device {struct ieee80211_crypt_data** crypt; int crypt_deinit_timer; struct ieee80211_crypt_data* pHTInfo; } ;
struct ieee80211_crypt_data {int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* deinit ) (int ) ;} ;


 int RemoveAllTS (struct ieee80211_device*) ;
 int WEP_KEYS ;
 int del_timer_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int ieee80211_crypt_deinit_entries (struct ieee80211_device*,int) ;
 int ieee80211_networks_free (struct ieee80211_device*) ;
 int ieee80211_softmac_free (struct ieee80211_device*) ;
 int kfree (struct ieee80211_crypt_data*) ;
 struct ieee80211_device* netdev_priv (struct net_device*) ;
 int stub1 (int ) ;

void free_ieee80211(struct net_device *dev)
{
 struct ieee80211_device *ieee = netdev_priv(dev);
 int i;



 if (ieee->pHTInfo != ((void*)0))
 {
  kfree(ieee->pHTInfo);
  ieee->pHTInfo = ((void*)0);
 }

 RemoveAllTS(ieee);
 ieee80211_softmac_free(ieee);
 del_timer_sync(&ieee->crypt_deinit_timer);
 ieee80211_crypt_deinit_entries(ieee, 1);

 for (i = 0; i < WEP_KEYS; i++) {
  struct ieee80211_crypt_data *crypt = ieee->crypt[i];
  if (crypt) {
   if (crypt->ops)
    crypt->ops->deinit(crypt->priv);
   kfree(crypt);
   ieee->crypt[i] = ((void*)0);
  }
 }

 ieee80211_networks_free(ieee);
 free_netdev(dev);
}
