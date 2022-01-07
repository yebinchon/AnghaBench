
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_et_stats ) (int *,struct net_device*,struct ethtool_stats*,int *) ;} ;


 int stub1 (int *,struct net_device*,struct ethtool_stats*,int *) ;
 int trace_rdev_get_et_stats (int *,struct net_device*) ;
 int trace_rdev_return_void (int *) ;

__attribute__((used)) static inline void rdev_get_et_stats(struct cfg80211_registered_device *rdev,
         struct net_device *dev,
         struct ethtool_stats *stats, u64 *data)
{
 trace_rdev_get_et_stats(&rdev->wiphy, dev);
 rdev->ops->get_et_stats(&rdev->wiphy, dev, stats, data);
 trace_rdev_return_void(&rdev->wiphy);
}
