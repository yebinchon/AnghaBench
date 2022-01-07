
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int sched_scan_mtx; } ;


 int __cfg80211_stop_sched_scan (struct cfg80211_registered_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_cfg80211_sched_scan_stopped (struct wiphy*) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void cfg80211_sched_scan_stopped(struct wiphy *wiphy)
{
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);

 trace_cfg80211_sched_scan_stopped(wiphy);

 mutex_lock(&rdev->sched_scan_mtx);
 __cfg80211_stop_sched_scan(rdev, 1);
 mutex_unlock(&rdev->sched_scan_mtx);
}
