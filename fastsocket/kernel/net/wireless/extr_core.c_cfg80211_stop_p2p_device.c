
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; int p2p_started; } ;
struct cfg80211_registered_device {TYPE_1__* scan_req; int scan_done_wk; int opencount; int sched_scan_mtx; int devlist_mtx; } ;
struct TYPE_2__ {int aborted; struct wireless_dev* wdev; } ;


 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 scalar_t__ WARN_ON (int) ;
 int ___cfg80211_scan_done (struct cfg80211_registered_device*,int) ;
 int lockdep_assert_held (int *) ;
 int rdev_stop_p2p_device (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int work_busy (int *) ;

void cfg80211_stop_p2p_device(struct cfg80211_registered_device *rdev,
         struct wireless_dev *wdev)
{
 lockdep_assert_held(&rdev->devlist_mtx);
 lockdep_assert_held(&rdev->sched_scan_mtx);

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_P2P_DEVICE))
  return;

 if (!wdev->p2p_started)
  return;

 rdev_stop_p2p_device(rdev, wdev);
 wdev->p2p_started = 0;

 rdev->opencount--;

 if (rdev->scan_req && rdev->scan_req->wdev == wdev) {
  bool busy = work_busy(&rdev->scan_done_wk);







  WARN_ON(!busy);

  rdev->scan_req->aborted = 1;
  ___cfg80211_scan_done(rdev, !busy);
 }
}
