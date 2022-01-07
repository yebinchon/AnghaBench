
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mesh_config {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_mesh_config ) (int *,struct net_device*,struct mesh_config*) ;} ;


 int stub1 (int *,struct net_device*,struct mesh_config*) ;
 int trace_rdev_get_mesh_config (int *,struct net_device*) ;
 int trace_rdev_return_int_mesh_config (int *,int,struct mesh_config*) ;

__attribute__((used)) static inline int
rdev_get_mesh_config(struct cfg80211_registered_device *rdev,
       struct net_device *dev, struct mesh_config *conf)
{
 int ret;
 trace_rdev_get_mesh_config(&rdev->wiphy, dev);
 ret = rdev->ops->get_mesh_config(&rdev->wiphy, dev, conf);
 trace_rdev_return_int_mesh_config(&rdev->wiphy, ret, conf);
 return ret;
}
