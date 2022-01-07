
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;


 struct vlan_group* __vlan_find_group (struct net_device*) ;

struct vlan_group *vlan_find_group(struct net_device *dev)
{
 return __vlan_find_group(dev);
}
