
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct net_device {int priv_flags; int ax25_ptr; } ;


 int IFF_OVS_DATAPATH ;
 scalar_t__ likely (int) ;
 scalar_t__ rcu_dereference_rtnl (int ) ;

struct vport *ovs_netdev_get_vport(struct net_device *dev)
{
 if (likely(dev->priv_flags & IFF_OVS_DATAPATH))
  return (struct vport *)
   rcu_dereference_rtnl(dev->ax25_ptr);
 else
  return ((void*)0);
}
