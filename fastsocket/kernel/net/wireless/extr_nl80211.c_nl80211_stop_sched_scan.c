
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct genl_info {struct cfg80211_registered_device** user_ptr; } ;
struct TYPE_3__ {int flags; } ;
struct cfg80211_registered_device {int sched_scan_mtx; TYPE_2__* ops; TYPE_1__ wiphy; } ;
struct TYPE_4__ {int sched_scan_stop; } ;


 int EOPNOTSUPP ;
 int WIPHY_FLAG_SUPPORTS_SCHED_SCAN ;
 int __cfg80211_stop_sched_scan (struct cfg80211_registered_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int nl80211_stop_sched_scan(struct sk_buff *skb,
       struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 int err;

 if (!(rdev->wiphy.flags & WIPHY_FLAG_SUPPORTS_SCHED_SCAN) ||
     !rdev->ops->sched_scan_stop)
  return -EOPNOTSUPP;

 mutex_lock(&rdev->sched_scan_mtx);
 err = __cfg80211_stop_sched_scan(rdev, 0);
 mutex_unlock(&rdev->sched_scan_mtx);

 return err;
}
