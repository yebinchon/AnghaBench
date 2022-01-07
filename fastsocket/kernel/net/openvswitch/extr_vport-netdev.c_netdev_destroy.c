
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {int dummy; } ;
struct netdev_vport {int rcu; TYPE_1__* dev; } ;
struct TYPE_2__ {int * ax25_ptr; int priv_flags; } ;


 int IFF_OVS_DATAPATH ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;
 int dev_set_promiscuity (TYPE_1__*,int) ;
 int free_port_rcu ;
 struct netdev_vport* netdev_vport_priv (struct vport*) ;
 int nr_bridges ;
 int * openvswitch_handle_frame_hook ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void netdev_destroy(struct vport *vport)
{
 struct netdev_vport *netdev_vport = netdev_vport_priv(vport);

 rtnl_lock();
 netdev_vport->dev->priv_flags &= ~IFF_OVS_DATAPATH;
 netdev_vport->dev->ax25_ptr = ((void*)0);

 if (atomic_dec_and_test(&nr_bridges))
  openvswitch_handle_frame_hook = ((void*)0);

 dev_set_promiscuity(netdev_vport->dev, -1);
 rtnl_unlock();

 call_rcu(&netdev_vport->rcu, free_port_rcu);
}
