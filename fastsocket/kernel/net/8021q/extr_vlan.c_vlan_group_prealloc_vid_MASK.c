#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u16 ;
struct vlan_group {struct net_device*** vlan_devices_arrays; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t VLAN_GROUP_ARRAY_PART_LEN ; 
 struct net_device** FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC2(struct vlan_group *vg, u16 vlan_id)
{
	struct net_device **array;
	unsigned int size;

	FUNC0();

	array = vg->vlan_devices_arrays[vlan_id / VLAN_GROUP_ARRAY_PART_LEN];
	if (array != NULL)
		return 0;

	size = sizeof(struct net_device *) * VLAN_GROUP_ARRAY_PART_LEN;
	array = FUNC1(size, GFP_KERNEL);
	if (array == NULL)
		return -ENOBUFS;

	vg->vlan_devices_arrays[vlan_id / VLAN_GROUP_ARRAY_PART_LEN] = array;
	return 0;
}