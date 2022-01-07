
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int iftype; int list; int netdev; int wiphy; } ;
struct cfg80211_registered_device {int devlist_mtx; int sched_scan_mtx; int devlist_generation; } ;


 int ASSERT_RTNL () ;

 scalar_t__ WARN_ON (int ) ;
 int WARN_ON_ONCE (int) ;
 int cfg80211_stop_p2p_device (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

void cfg80211_unregister_wdev(struct wireless_dev *wdev)
{
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);

 ASSERT_RTNL();

 if (WARN_ON(wdev->netdev))
  return;

 mutex_lock(&rdev->devlist_mtx);
 mutex_lock(&rdev->sched_scan_mtx);
 list_del_rcu(&wdev->list);
 rdev->devlist_generation++;

 switch (wdev->iftype) {
 case 128:
  cfg80211_stop_p2p_device(rdev, wdev);
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }
 mutex_unlock(&rdev->sched_scan_mtx);
 mutex_unlock(&rdev->devlist_mtx);
}
