
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct atalk_iface* atalk_ptr; } ;
struct TYPE_2__ {int s_node; } ;
struct atalk_iface {int status; TYPE_1__ address; } ;


 int ATADDR_ANYNODE ;
 int ATADDR_BCAST ;
 int ATIF_PROBE ;

__attribute__((used)) static struct atalk_iface *atalk_find_anynet(int node, struct net_device *dev)
{
 struct atalk_iface *iface = dev->atalk_ptr;

 if (!iface || iface->status & ATIF_PROBE)
  goto out_err;

 if (node != ATADDR_BCAST &&
     iface->address.s_node != node &&
     node != ATADDR_ANYNODE)
  goto out_err;
out:
 return iface;
out_err:
 iface = ((void*)0);
 goto out;
}
