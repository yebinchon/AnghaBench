
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mesh_setup {int dummy; } ;
struct mesh_config {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* join_mesh ) (int *,struct net_device*,struct mesh_config const*,struct mesh_setup const*) ;} ;


 int stub1 (int *,struct net_device*,struct mesh_config const*,struct mesh_setup const*) ;
 int trace_rdev_join_mesh (int *,struct net_device*,struct mesh_config const*,struct mesh_setup const*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_join_mesh(struct cfg80211_registered_device *rdev,
     struct net_device *dev,
     const struct mesh_config *conf,
     const struct mesh_setup *setup)
{
 int ret;
 trace_rdev_join_mesh(&rdev->wiphy, dev, conf, setup);
 ret = rdev->ops->join_mesh(&rdev->wiphy, dev, conf, setup);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
