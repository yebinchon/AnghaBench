
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct TYPE_3__ {int registered; int dev; int debugfsdir; } ;
struct cfg80211_registered_device {int opencount; TYPE_2__* ops; scalar_t__ wowlan; int dfs_update_channels_wk; int event_work; int conn_work; int scan_done_wk; TYPE_1__ wiphy; int list; int devlist_mtx; int wdev_list; int dev_wait; int rfkill; } ;
struct TYPE_4__ {scalar_t__ set_wakeup; } ;


 int BUG_ON (int) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int cfg80211_lock_rdev (struct cfg80211_registered_device*) ;
 int cfg80211_mutex ;
 int cfg80211_rdev_free_wowlan (struct cfg80211_registered_device*) ;
 int cfg80211_rdev_list_generation ;
 int cfg80211_unlock_rdev (struct cfg80211_registered_device*) ;
 int debugfs_remove_recursive (int ) ;
 int device_del (int *) ;
 int flush_work (int *) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdev_set_wakeup (struct cfg80211_registered_device*,int) ;
 int rfkill_unregister (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int synchronize_rcu () ;
 int wait_event (int ,int ) ;
 int wiphy_regulatory_deregister (struct wiphy*) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void wiphy_unregister(struct wiphy *wiphy)
{
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);

 rtnl_lock();
 rdev->wiphy.registered = 0;
 rtnl_unlock();

 rfkill_unregister(rdev->rfkill);


 mutex_lock(&cfg80211_mutex);

 wait_event(rdev->dev_wait, ({
  int __count;
  mutex_lock(&rdev->devlist_mtx);
  __count = rdev->opencount;
  mutex_unlock(&rdev->devlist_mtx);
  __count == 0; }));

 mutex_lock(&rdev->devlist_mtx);
 BUG_ON(!list_empty(&rdev->wdev_list));
 mutex_unlock(&rdev->devlist_mtx);





 debugfs_remove_recursive(rdev->wiphy.debugfsdir);
 list_del_rcu(&rdev->list);
 synchronize_rcu();
 cfg80211_lock_rdev(rdev);

 cfg80211_unlock_rdev(rdev);





 wiphy_regulatory_deregister(wiphy);

 cfg80211_rdev_list_generation++;
 device_del(&rdev->wiphy.dev);

 mutex_unlock(&cfg80211_mutex);

 flush_work(&rdev->scan_done_wk);
 cancel_work_sync(&rdev->conn_work);
 flush_work(&rdev->event_work);
 cancel_delayed_work_sync(&rdev->dfs_update_channels_wk);

 if (rdev->wowlan && rdev->ops->set_wakeup)
  rdev_set_wakeup(rdev, 0);
 cfg80211_rdev_free_wowlan(rdev);
}
