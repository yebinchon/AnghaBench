
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* probe_client ) (int *,struct net_device*,int const*,int *) ;} ;


 int stub1 (int *,struct net_device*,int const*,int *) ;
 int trace_rdev_probe_client (int *,struct net_device*,int const*) ;
 int trace_rdev_return_int_cookie (int *,int,int ) ;

__attribute__((used)) static inline int rdev_probe_client(struct cfg80211_registered_device *rdev,
        struct net_device *dev, const u8 *peer,
        u64 *cookie)
{
 int ret;
 trace_rdev_probe_client(&rdev->wiphy, dev, peer);
 ret = rdev->ops->probe_client(&rdev->wiphy, dev, peer, cookie);
 trace_rdev_return_int_cookie(&rdev->wiphy, ret, *cookie);
 return ret;
}
