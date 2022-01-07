
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* del_mpath ) (int *,struct net_device*,int *) ;} ;


 int stub1 (int *,struct net_device*,int *) ;
 int trace_rdev_del_mpath (int *,struct net_device*,int *) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_del_mpath(struct cfg80211_registered_device *rdev,
     struct net_device *dev, u8 *dst)
{
 int ret;
 trace_rdev_del_mpath(&rdev->wiphy, dev, dst);
 ret = rdev->ops->del_mpath(&rdev->wiphy, dev, dst);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
