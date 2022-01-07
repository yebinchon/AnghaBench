
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_wds_peer ) (int *,struct net_device*,int const*) ;} ;


 int stub1 (int *,struct net_device*,int const*) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_wds_peer (int *,struct net_device*,int const*) ;

__attribute__((used)) static inline int rdev_set_wds_peer(struct cfg80211_registered_device *rdev,
        struct net_device *dev, const u8 *addr)
{
 int ret;
 trace_rdev_set_wds_peer(&rdev->wiphy, dev, addr);
 ret = rdev->ops->set_wds_peer(&rdev->wiphy, dev, addr);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
