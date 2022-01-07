
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct vport* vport; } ;


 TYPE_1__* internal_dev_priv (struct net_device*) ;
 int ovs_is_internal_dev (struct net_device*) ;

struct vport *ovs_internal_dev_get_vport(struct net_device *netdev)
{
 if (!ovs_is_internal_dev(netdev))
  return ((void*)0);

 return internal_dev_priv(netdev)->vport;
}
