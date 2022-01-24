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
struct vlan_group {struct vlan_group** vlan_devices_arrays; } ;

/* Variables and functions */
 int VLAN_GROUP_ARRAY_SPLIT_PARTS ; 
 int /*<<< orphan*/  FUNC0 (struct vlan_group*) ; 

void FUNC1(struct vlan_group *grp)
{
	int i;

	for (i = 0; i < VLAN_GROUP_ARRAY_SPLIT_PARTS; i++)
		FUNC0(grp->vlan_devices_arrays[i]);
	FUNC0(grp);
}