
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vport {int dummy; } ;
struct datapath {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int ifindex; } ;


 int OVSP_LOCAL ;
 TYPE_2__* netdev_vport_priv (struct vport*) ;
 struct vport* ovs_vport_rcu (struct datapath*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int get_dpifindex(struct datapath *dp)
{
 struct vport *local;
 int ifindex;

 rcu_read_lock();

 local = ovs_vport_rcu(dp, OVSP_LOCAL);
 if (local)
  ifindex = netdev_vport_priv(local)->dev->ifindex;
 else
  ifindex = 0;

 rcu_read_unlock();

 return ifindex;
}
