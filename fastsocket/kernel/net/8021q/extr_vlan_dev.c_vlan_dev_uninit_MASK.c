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
struct vlan_priority_tci_mapping {struct vlan_priority_tci_mapping* next; } ;
struct vlan_dev_info {struct vlan_priority_tci_mapping** egress_priority_map; int /*<<< orphan*/ * vlan_rx_stats; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vlan_priority_tci_mapping**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vlan_priority_tci_mapping*) ; 
 struct vlan_dev_info* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct vlan_priority_tci_mapping *pm;
	struct vlan_dev_info *vlan = FUNC3(dev);
	int i;

	FUNC1(vlan->vlan_rx_stats);
	vlan->vlan_rx_stats = NULL;
	for (i = 0; i < FUNC0(vlan->egress_priority_map); i++) {
		while ((pm = vlan->egress_priority_map[i]) != NULL) {
			vlan->egress_priority_map[i] = pm->next;
			FUNC2(pm);
		}
	}
}