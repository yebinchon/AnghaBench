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
typedef  scalar_t__ u16 ;
struct vlan_group {scalar_t__ nr_vlans; int /*<<< orphan*/  rcu; int /*<<< orphan*/  hlist; } ;
struct vlan_dev_info {scalar_t__ vlan_id; struct net_device* real_dev; } ;
struct net_device_ops {int /*<<< orphan*/  (* ndo_vlan_rx_register ) (struct net_device*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* ndo_vlan_rx_kill_vid ) (struct net_device*,scalar_t__) ;} ;
struct net_device {int features; struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NETIF_F_HW_VLAN_FILTER ; 
 int NETIF_F_HW_VLAN_RX ; 
 struct vlan_group* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 struct vlan_dev_info* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct vlan_group*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  vlan_rcu_free ; 

void FUNC13(struct net_device *dev)
{
	struct vlan_dev_info *vlan = FUNC10(dev);
	struct net_device *real_dev = vlan->real_dev;
	const struct net_device_ops *ops = real_dev->netdev_ops;
	struct vlan_group *grp;
	u16 vlan_id = vlan->vlan_id;

	FUNC0();

	grp = FUNC2(real_dev);
	FUNC1(!grp);

	/* Take it out of our own structures, but be sure to interlock with
	 * HW accelerating devices or SW vlan input packet processing if
	 * VLAN is not 0 (leave it there for 802.1p).
	 */
	if (vlan_id && (real_dev->features & NETIF_F_HW_VLAN_FILTER))
		ops->ndo_vlan_rx_kill_vid(real_dev, vlan_id);

	FUNC11(grp, vlan_id, NULL);
	grp->nr_vlans--;

	FUNC8();

	FUNC9(dev);

	/* If the group is now empty, kill off the group. */
	if (grp->nr_vlans == 0) {
		FUNC12(real_dev);

		if (real_dev->features & NETIF_F_HW_VLAN_RX)
			ops->ndo_vlan_rx_register(real_dev, NULL);

		FUNC5(&grp->hlist);

		/* Free the group, after all cpu's are done. */
		FUNC3(&grp->rcu, vlan_rcu_free);
	}

	/* Get rid of the vlan's reference to real_dev */
	FUNC4(real_dev);
}