
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flush_pmksa ) (int *,struct net_device*) ;} ;


 int stub1 (int *,struct net_device*) ;
 int trace_rdev_flush_pmksa (int *,struct net_device*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_flush_pmksa(struct cfg80211_registered_device *rdev,
       struct net_device *netdev)
{
 int ret;
 trace_rdev_flush_pmksa(&rdev->wiphy, netdev);
 ret = rdev->ops->flush_pmksa(&rdev->wiphy, netdev);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
