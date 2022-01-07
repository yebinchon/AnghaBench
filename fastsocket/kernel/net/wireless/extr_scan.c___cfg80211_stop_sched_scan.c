
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* sched_scan_req; int sched_scan_mtx; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 int ENOENT ;
 int NL80211_CMD_SCHED_SCAN_STOPPED ;
 int kfree (TYPE_1__*) ;
 int lockdep_assert_held (int *) ;
 int nl80211_send_sched_scan (struct cfg80211_registered_device*,struct net_device*,int ) ;
 int rdev_sched_scan_stop (struct cfg80211_registered_device*,struct net_device*) ;

int __cfg80211_stop_sched_scan(struct cfg80211_registered_device *rdev,
          bool driver_initiated)
{
 struct net_device *dev;

 lockdep_assert_held(&rdev->sched_scan_mtx);

 if (!rdev->sched_scan_req)
  return -ENOENT;

 dev = rdev->sched_scan_req->dev;

 if (!driver_initiated) {
  int err = rdev_sched_scan_stop(rdev, dev);
  if (err)
   return err;
 }

 nl80211_send_sched_scan(rdev, dev, NL80211_CMD_SCHED_SCAN_STOPPED);

 kfree(rdev->sched_scan_req);
 rdev->sched_scan_req = ((void*)0);

 return 0;
}
