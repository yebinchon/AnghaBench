
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct vlan_group {struct net_device*** vlan_devices_arrays; } ;
struct net_device {int dummy; } ;


 int ASSERT_RTNL () ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 size_t VLAN_GROUP_ARRAY_PART_LEN ;
 struct net_device** kzalloc (unsigned int,int ) ;

int vlan_group_prealloc_vid(struct vlan_group *vg, u16 vlan_id)
{
 struct net_device **array;
 unsigned int size;

 ASSERT_RTNL();

 array = vg->vlan_devices_arrays[vlan_id / VLAN_GROUP_ARRAY_PART_LEN];
 if (array != ((void*)0))
  return 0;

 size = sizeof(struct net_device *) * VLAN_GROUP_ARRAY_PART_LEN;
 array = kzalloc(size, GFP_KERNEL);
 if (array == ((void*)0))
  return -ENOBUFS;

 vg->vlan_devices_arrays[vlan_id / VLAN_GROUP_ARRAY_PART_LEN] = array;
 return 0;
}
