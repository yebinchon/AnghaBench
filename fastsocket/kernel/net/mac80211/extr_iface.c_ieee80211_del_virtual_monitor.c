
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ieee80211_local {int iflist_mtx; int monitor_sdata; TYPE_1__ hw; } ;


 int ASSERT_RTNL () ;
 int IEEE80211_HW_WANT_MONITOR_VIF ;
 int drv_remove_interface (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int ieee80211_vif_release_channel (struct ieee80211_sub_if_data*) ;
 int kfree (struct ieee80211_sub_if_data*) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 struct ieee80211_sub_if_data* rcu_dereference_protected (int ,int ) ;
 int synchronize_net () ;

void ieee80211_del_virtual_monitor(struct ieee80211_local *local)
{
 struct ieee80211_sub_if_data *sdata;

 if (!(local->hw.flags & IEEE80211_HW_WANT_MONITOR_VIF))
  return;

 ASSERT_RTNL();

 mutex_lock(&local->iflist_mtx);

 sdata = rcu_dereference_protected(local->monitor_sdata,
       lockdep_is_held(&local->iflist_mtx));
 if (!sdata) {
  mutex_unlock(&local->iflist_mtx);
  return;
 }

 rcu_assign_pointer(local->monitor_sdata, ((void*)0));
 mutex_unlock(&local->iflist_mtx);

 synchronize_net();

 ieee80211_vif_release_channel(sdata);

 drv_remove_interface(local, sdata);

 kfree(sdata);
}
