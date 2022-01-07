
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {struct vlan_group** vlan_devices_arrays; } ;


 int VLAN_GROUP_ARRAY_SPLIT_PARTS ;
 int kfree (struct vlan_group*) ;

void vlan_group_free(struct vlan_group *grp)
{
 int i;

 for (i = 0; i < VLAN_GROUP_ARRAY_SPLIT_PARTS; i++)
  kfree(grp->vlan_devices_arrays[i]);
 kfree(grp);
}
