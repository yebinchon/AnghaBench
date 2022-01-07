
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;


 struct vlan_group* __vlan_find_group (struct net_device*) ;
 struct net_device* vlan_group_get_device (struct vlan_group*,int ) ;

struct net_device *__find_vlan_dev(struct net_device *real_dev, u16 vlan_id)
{
 struct vlan_group *grp = __vlan_find_group(real_dev);

 if (grp)
  return vlan_group_get_device(grp, vlan_id);

 return ((void*)0);
}
