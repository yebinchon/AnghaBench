
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* add_mpath ) (int *,struct net_device*,int *,int *) ;} ;


 int stub1 (int *,struct net_device*,int *,int *) ;
 int trace_rdev_add_mpath (int *,struct net_device*,int *,int *) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_add_mpath(struct cfg80211_registered_device *rdev,
     struct net_device *dev, u8 *dst, u8 *next_hop)
{
 int ret;
 trace_rdev_add_mpath(&rdev->wiphy, dev, dst, next_hop);
 ret = rdev->ops->add_mpath(&rdev->wiphy, dev, dst, next_hop);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
