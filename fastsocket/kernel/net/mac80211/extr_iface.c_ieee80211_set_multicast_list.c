
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; int mc_count; int mc_list; int addr_len; int mc; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int flags; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int reconfig_filter; int hw; int filter_lock; int mc_count; int mc_list; int iff_promiscs; int iff_allmultis; } ;


 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_SDATA_ALLMULTI ;
 int IEEE80211_SDATA_PROMISC ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 int __dev_addr_sync (int *,int *,int *,int *) ;
 int __hw_addr_sync (int *,int *,int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int drv_set_multicast_list (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ,...) ;
 int ieee80211_queue_work (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ieee80211_set_multicast_list(struct net_device *dev)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 int allmulti, promisc, sdata_allmulti, sdata_promisc;

 allmulti = !!(dev->flags & IFF_ALLMULTI);
 promisc = !!(dev->flags & IFF_PROMISC);
 sdata_allmulti = !!(sdata->flags & IEEE80211_SDATA_ALLMULTI);
 sdata_promisc = !!(sdata->flags & IEEE80211_SDATA_PROMISC);

 if (allmulti != sdata_allmulti) {
  if (dev->flags & IFF_ALLMULTI)
   atomic_inc(&local->iff_allmultis);
  else
   atomic_dec(&local->iff_allmultis);
  sdata->flags ^= IEEE80211_SDATA_ALLMULTI;
 }

 if (promisc != sdata_promisc) {
  if (dev->flags & IFF_PROMISC)
   atomic_inc(&local->iff_promiscs);
  else
   atomic_dec(&local->iff_promiscs);
  sdata->flags ^= IEEE80211_SDATA_PROMISC;
 }






 if (sdata->vif.type != NL80211_IFTYPE_MONITOR &&
     sdata->vif.type != NL80211_IFTYPE_AP_VLAN &&
     sdata->vif.type != NL80211_IFTYPE_AP)



  drv_set_multicast_list(local, sdata, dev->mc_count,
           dev->mc_list);


 spin_lock_bh(&local->filter_lock);



 __dev_addr_sync(&local->mc_list, &local->mc_count,
   &dev->mc_list, &dev->mc_count);

 spin_unlock_bh(&local->filter_lock);
 ieee80211_queue_work(&local->hw, &local->reconfig_filter);
}
