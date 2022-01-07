
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int auth_type; } ;
struct TYPE_4__ {TYPE_1__ connect; int ie_len; int * ie; } ;
struct wireless_dev {int iftype; scalar_t__ beacon_interval; TYPE_2__ wext; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int sched_scan_mtx; } ;


 int NL80211_AUTHTYPE_AUTOMATIC ;






 int WLAN_REASON_DEAUTH_LEAVING ;
 int __cfg80211_disconnect (struct cfg80211_registered_device*,struct net_device*,int ,int) ;
 int __cfg80211_stop_sched_scan (struct cfg80211_registered_device*,int) ;
 int cfg80211_leave_ibss (struct cfg80211_registered_device*,struct net_device*,int) ;
 int cfg80211_leave_mesh (struct cfg80211_registered_device*,struct net_device*) ;
 int cfg80211_stop_ap (struct cfg80211_registered_device*,struct net_device*) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

void cfg80211_leave(struct cfg80211_registered_device *rdev,
     struct wireless_dev *wdev)
{
 struct net_device *dev = wdev->netdev;

 switch (wdev->iftype) {
 case 133:
  cfg80211_leave_ibss(rdev, dev, 1);
  break;
 case 130:
 case 128:
  mutex_lock(&rdev->sched_scan_mtx);
  __cfg80211_stop_sched_scan(rdev, 0);
  mutex_unlock(&rdev->sched_scan_mtx);

  wdev_lock(wdev);






  __cfg80211_disconnect(rdev, dev,
          WLAN_REASON_DEAUTH_LEAVING, 1);
  wdev_unlock(wdev);
  break;
 case 131:
  cfg80211_leave_mesh(rdev, dev);
  break;
 case 132:
 case 129:
  cfg80211_stop_ap(rdev, dev);
  break;
 default:
  break;
 }

 wdev->beacon_interval = 0;
}
