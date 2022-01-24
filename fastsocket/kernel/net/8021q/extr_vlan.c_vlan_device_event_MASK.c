#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vlan_group {int nr_vlans; } ;
struct notifier_block {int dummy; } ;
struct net_device {int features; int flags; int /*<<< orphan*/  reg_state; int /*<<< orphan*/  mtu; TYPE_1__* netdev_ops; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ndo_vlan_rx_add_vid ) (struct net_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int IFF_UP ; 
#define  NETDEV_CHANGE 134 
#define  NETDEV_CHANGEADDR 133 
#define  NETDEV_CHANGEMTU 132 
#define  NETDEV_DOWN 131 
#define  NETDEV_FEAT_CHANGE 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NETIF_F_HW_VLAN_FILTER ; 
 int /*<<< orphan*/  NETREG_UNREGISTERING ; 
 int NOTIFY_DONE ; 
 int VLAN_GROUP_ARRAY_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,unsigned long) ; 
 struct vlan_group* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 struct net_device* FUNC10 (struct vlan_group*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC13(struct notifier_block *unused, unsigned long event,
			     void *ptr)
{
	struct net_device *dev = ptr;
	struct vlan_group *grp;
	int i, flgs;
	struct net_device *vlandev;

	if (FUNC5(dev))
		FUNC0(dev, event);

	if ((event == NETDEV_UP) &&
	    (dev->features & NETIF_F_HW_VLAN_FILTER) &&
	    dev->netdev_ops->ndo_vlan_rx_add_vid) {
		FUNC7("8021q: adding VLAN 0 to HW filter on device %s\n",
			dev->name);
		dev->netdev_ops->ndo_vlan_rx_add_vid(dev, 0);
	}

	grp = FUNC1(dev);
	if (!grp)
		goto out;

	/* It is OK that we do not hold the group lock right now,
	 * as we run under the RTNL lock.
	 */

	switch (event) {
	case NETDEV_CHANGE:
		/* Propagate real device state to vlan devices */
		for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
			if (FUNC4(dev, i))
				continue;
			vlandev = FUNC10(grp, i);
			if (!vlandev)
				continue;

			FUNC6(dev, vlandev);
		}
		break;

	case NETDEV_CHANGEADDR:
		/* Adjust unicast filters on underlying device */
		for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
			if (FUNC4(dev, i))
				continue;
			vlandev = FUNC10(grp, i);
			if (!vlandev)
				continue;

			flgs = vlandev->flags;
			if (!(flgs & IFF_UP))
				continue;

			FUNC11(dev, vlandev);
		}
		break;

	case NETDEV_CHANGEMTU:
		for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
			if (FUNC4(dev, i))
				continue;
			vlandev = FUNC10(grp, i);
			if (!vlandev)
				continue;

			if (vlandev->mtu <= dev->mtu)
				continue;

			FUNC3(vlandev, dev->mtu);
		}
		break;

	case NETDEV_FEAT_CHANGE:
		/* Propagate device features to underlying device */
		for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
			if (FUNC4(dev, i))
				continue;
			vlandev = FUNC10(grp, i);
			if (!vlandev)
				continue;

			FUNC12(dev, vlandev);
		}

		break;

	case NETDEV_DOWN:
		/* Put all VLANs for this dev in the down state too.  */
		for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
			if (FUNC4(dev, i))
				continue;
			vlandev = FUNC10(grp, i);
			if (!vlandev)
				continue;

			flgs = vlandev->flags;
			if (!(flgs & IFF_UP))
				continue;

			FUNC2(vlandev, flgs & ~IFF_UP);
			FUNC6(dev, vlandev);
		}
		break;

	case NETDEV_UP:
		/* Put all VLANs for this dev in the up state too.  */
		for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
			if (FUNC4(dev, i))
				continue;
			vlandev = FUNC10(grp, i);
			if (!vlandev)
				continue;

			flgs = vlandev->flags;
			if (flgs & IFF_UP)
				continue;

			FUNC2(vlandev, flgs | IFF_UP);
			FUNC6(dev, vlandev);
		}
		break;

	case NETDEV_UNREGISTER:
		/* twiddle thumbs on netns device moves */
		if (dev->reg_state != NETREG_UNREGISTERING)
			break;

		/* Delete all VLANs for this dev. */
		for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
			if (FUNC4(dev, i))
				continue;
			vlandev = FUNC10(grp, i);
			if (!vlandev)
				continue;

			/* unregistration of last vlan destroys group, abort
			 * afterwards */
			if (grp->nr_vlans == 1)
				i = VLAN_GROUP_ARRAY_LEN;

			FUNC9(vlandev);
		}
		break;
	}

out:
	return NOTIFY_DONE;
}