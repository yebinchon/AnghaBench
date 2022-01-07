
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int wdev; scalar_t__ dev; TYPE_1__* local; int list; } ;
struct TYPE_2__ {int iflist_mtx; } ;


 int ASSERT_RTNL () ;
 int cfg80211_unregister_wdev (int *) ;
 int kfree (struct ieee80211_sub_if_data*) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;
 int unregister_netdevice (scalar_t__) ;

void ieee80211_if_remove(struct ieee80211_sub_if_data *sdata)
{
 ASSERT_RTNL();

 mutex_lock(&sdata->local->iflist_mtx);
 list_del_rcu(&sdata->list);
 mutex_unlock(&sdata->local->iflist_mtx);

 synchronize_rcu();

 if (sdata->dev) {
  unregister_netdevice(sdata->dev);
 } else {
  cfg80211_unregister_wdev(&sdata->wdev);
  kfree(sdata);
 }
}
