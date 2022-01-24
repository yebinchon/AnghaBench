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
struct vlan_group {int /*<<< orphan*/  rcu; int /*<<< orphan*/  hlist; int /*<<< orphan*/  nr_vlans; } ;
struct vlan_dev_info {int /*<<< orphan*/  vlan_id; struct net_device* real_dev; } ;
struct net_device_ops {int /*<<< orphan*/  (* ndo_vlan_rx_add_vid ) (struct net_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ndo_vlan_rx_register ) (struct net_device*,struct vlan_group*) ;} ;
struct net_device {int features; struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int NETIF_F_HW_VLAN_FILTER ; 
 int NETIF_F_HW_VLAN_RX ; 
 struct vlan_group* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct vlan_group*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct vlan_dev_info* FUNC9 (struct net_device*) ; 
 struct vlan_group* FUNC10 (struct net_device*) ; 
 int FUNC11 (struct vlan_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vlan_group*,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  vlan_rcu_free ; 

int FUNC15(struct net_device *dev)
{
	struct vlan_dev_info *vlan = FUNC9(dev);
	struct net_device *real_dev = vlan->real_dev;
	const struct net_device_ops *ops = real_dev->netdev_ops;
	u16 vlan_id = vlan->vlan_id;
	struct vlan_group *grp, *ngrp = NULL;
	int err;

	grp = FUNC0(real_dev);
	if (!grp) {
		ngrp = grp = FUNC10(real_dev);
		if (!grp)
			return -ENOBUFS;
		err = FUNC13(real_dev);
		if (err < 0)
			goto out_free_group;
	}

	err = FUNC11(grp, vlan_id);
	if (err < 0)
		goto out_uninit_applicant;

	err = FUNC6(dev);
	if (err < 0)
		goto out_uninit_applicant;

	/* Account for reference in struct vlan_dev_info */
	FUNC2(real_dev);

	FUNC5(real_dev, dev);
	FUNC4(dev); /* _MUST_ call rfc2863_policy() */

	/* So, got the sucker initialized, now lets place
	 * it into our local structure.
	 */
	FUNC12(grp, vlan_id, dev);
	grp->nr_vlans++;

	if (ngrp && real_dev->features & NETIF_F_HW_VLAN_RX)
		ops->ndo_vlan_rx_register(real_dev, ngrp);
	if (real_dev->features & NETIF_F_HW_VLAN_FILTER)
		ops->ndo_vlan_rx_add_vid(real_dev, vlan_id);

	return 0;

out_uninit_applicant:
	if (ngrp)
		FUNC14(real_dev);
out_free_group:
	if (ngrp) {
		FUNC3(&ngrp->hlist);
		/* Free the group, after all cpu's are done. */
		FUNC1(&ngrp->rcu, vlan_rcu_free);
	}
	return err;
}