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
struct vlan_group {int /*<<< orphan*/  hlist; struct net_device* real_dev; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vlan_group* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * vlan_group_hash ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

struct vlan_group *FUNC3(struct net_device *real_dev)
{
	struct vlan_group *grp;

	grp = FUNC1(sizeof(struct vlan_group), GFP_KERNEL);
	if (!grp)
		return NULL;

	grp->real_dev = real_dev;
	FUNC0(&grp->hlist,
			&vlan_group_hash[FUNC2(real_dev->ifindex)]);
	return grp;
}