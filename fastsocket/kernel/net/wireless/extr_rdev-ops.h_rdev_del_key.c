
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* del_key ) (int *,struct net_device*,int ,int,int const*) ;} ;


 int stub1 (int *,struct net_device*,int ,int,int const*) ;
 int trace_rdev_del_key (int *,struct net_device*,int ,int,int const*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_del_key(struct cfg80211_registered_device *rdev,
          struct net_device *netdev, u8 key_index,
          bool pairwise, const u8 *mac_addr)
{
 int ret;
 trace_rdev_del_key(&rdev->wiphy, netdev, key_index, pairwise, mac_addr);
 ret = rdev->ops->del_key(&rdev->wiphy, netdev, key_index, pairwise,
      mac_addr);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
