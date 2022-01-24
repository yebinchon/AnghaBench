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
struct vlan_dev_info {int /*<<< orphan*/  nr_egress_mappings; int /*<<< orphan*/  nr_ingress_mappings; } ;
struct net_device {int dummy; } ;
struct ifla_vlan_flags {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 struct vlan_dev_info* FUNC1 (struct net_device const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC3(const struct net_device *dev)
{
	struct vlan_dev_info *vlan = FUNC1(dev);

	return FUNC0(2) +	/* IFLA_VLAN_ID */
	       sizeof(struct ifla_vlan_flags) + /* IFLA_VLAN_FLAGS */
	       FUNC2(vlan->nr_ingress_mappings) +
	       FUNC2(vlan->nr_egress_mappings);
}