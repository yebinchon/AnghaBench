
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* libertas_set_mesh_channel ) (int *,struct net_device*,struct ieee80211_channel*) ;} ;


 int stub1 (int *,struct net_device*,struct ieee80211_channel*) ;
 int trace_rdev_libertas_set_mesh_channel (int *,struct net_device*,struct ieee80211_channel*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int
rdev_libertas_set_mesh_channel(struct cfg80211_registered_device *rdev,
          struct net_device *dev,
          struct ieee80211_channel *chan)
{
 int ret;
 trace_rdev_libertas_set_mesh_channel(&rdev->wiphy, dev, chan);
 ret = rdev->ops->libertas_set_mesh_channel(&rdev->wiphy, dev, chan);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
