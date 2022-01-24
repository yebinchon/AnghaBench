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
typedef  scalar_t__ u16 ;
struct vlan_net {int name_type; } ;
struct vlan_dev_info {int dummy; } ;
struct net_device {char* name; int /*<<< orphan*/ * rtnl_link_ops; int /*<<< orphan*/  mtu; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/ * dent; struct net_device* real_dev; scalar_t__ vlan_id; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ERANGE ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  VLAN_FLAG_REORDER_HDR ; 
#define  VLAN_NAME_TYPE_PLUS_VID 131 
#define  VLAN_NAME_TYPE_PLUS_VID_NO_PAD 130 
#define  VLAN_NAME_TYPE_RAW_PLUS_VID 129 
#define  VLAN_NAME_TYPE_RAW_PLUS_VID_NO_PAD 128 
 scalar_t__ VLAN_VID_MASK ; 
 struct net_device* FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct vlan_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,scalar_t__,...) ; 
 int FUNC7 (struct net_device*,scalar_t__) ; 
 TYPE_1__* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  vlan_link_ops ; 
 int /*<<< orphan*/  vlan_net_id ; 
 int /*<<< orphan*/  vlan_setup ; 

__attribute__((used)) static int FUNC9(struct net_device *real_dev, u16 vlan_id)
{
	struct net_device *new_dev;
	struct net *net = FUNC1(real_dev);
	struct vlan_net *vn = FUNC4(net, vlan_net_id);
	char name[IFNAMSIZ];
	int err;

	if (vlan_id >= VLAN_VID_MASK)
		return -ERANGE;

	err = FUNC7(real_dev, vlan_id);
	if (err < 0)
		return err;

	/* Gotta set up the fields for the device. */
	switch (vn->name_type) {
	case VLAN_NAME_TYPE_RAW_PLUS_VID:
		/* name will look like:	 eth1.0005 */
		FUNC6(name, IFNAMSIZ, "%s.%.4i", real_dev->name, vlan_id);
		break;
	case VLAN_NAME_TYPE_PLUS_VID_NO_PAD:
		/* Put our vlan.VID in the name.
		 * Name will look like:	 vlan5
		 */
		FUNC6(name, IFNAMSIZ, "vlan%i", vlan_id);
		break;
	case VLAN_NAME_TYPE_RAW_PLUS_VID_NO_PAD:
		/* Put our vlan.VID in the name.
		 * Name will look like:	 eth0.5
		 */
		FUNC6(name, IFNAMSIZ, "%s.%i", real_dev->name, vlan_id);
		break;
	case VLAN_NAME_TYPE_PLUS_VID:
		/* Put our vlan.VID in the name.
		 * Name will look like:	 vlan0005
		 */
	default:
		FUNC6(name, IFNAMSIZ, "vlan%.4i", vlan_id);
	}

	new_dev = FUNC0(sizeof(struct vlan_dev_info), name,
				  vlan_setup);

	if (new_dev == NULL)
		return -ENOBUFS;

	FUNC2(new_dev, net);
	/* need 4 bytes for extra VLAN header info,
	 * hope the underlying device can handle it.
	 */
	new_dev->mtu = real_dev->mtu;

	FUNC8(new_dev)->vlan_id = vlan_id;
	FUNC8(new_dev)->real_dev = real_dev;
	FUNC8(new_dev)->dent = NULL;
	FUNC8(new_dev)->flags = VLAN_FLAG_REORDER_HDR;

	new_dev->rtnl_link_ops = &vlan_link_ops;
	err = FUNC5(new_dev);
	if (err < 0)
		goto out_free_newdev;

	return 0;

out_free_newdev:
	FUNC3(new_dev);
	return err;
}