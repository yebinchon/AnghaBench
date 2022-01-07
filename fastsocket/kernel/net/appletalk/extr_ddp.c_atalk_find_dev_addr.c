
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct atalk_iface* atalk_ptr; } ;
struct atalk_addr {int dummy; } ;
struct atalk_iface {struct atalk_addr address; } ;



struct atalk_addr *atalk_find_dev_addr(struct net_device *dev)
{
 struct atalk_iface *iface = dev->atalk_ptr;
 return iface ? &iface->address : ((void*)0);
}
