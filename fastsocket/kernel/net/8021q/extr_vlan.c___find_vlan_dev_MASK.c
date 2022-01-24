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
typedef  int /*<<< orphan*/  u16 ;
struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct vlan_group* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct vlan_group*,int /*<<< orphan*/ ) ; 

struct net_device *FUNC2(struct net_device *real_dev, u16 vlan_id)
{
	struct vlan_group *grp = FUNC0(real_dev);

	if (grp)
		return FUNC1(grp, vlan_id);

	return NULL;
}