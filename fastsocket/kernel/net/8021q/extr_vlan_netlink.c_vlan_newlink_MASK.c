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
struct vlan_dev_info {int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  flags; struct net_device* real_dev; } ;
struct nlattr {int dummy; } ;
struct net_device {scalar_t__ mtu; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct net* src_net; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t IFLA_LINK ; 
 size_t IFLA_MTU ; 
 size_t IFLA_VLAN_ID ; 
 int /*<<< orphan*/  VLAN_FLAG_REORDER_HDR ; 
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*,struct nlattr**,struct nlattr**) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct vlan_dev_info* FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
			struct nlattr *tb[], struct nlattr *data[])
{
	struct vlan_dev_info *vlan = FUNC7(dev);
	struct net_device *real_dev;
	struct net *src_net = FUNC1(dev)->src_net;
	int err;

	if (!data[IFLA_VLAN_ID])
		return -EINVAL;

	if (!tb[IFLA_LINK])
		return -EINVAL;
	real_dev = FUNC0(src_net, FUNC3(tb[IFLA_LINK]));
	if (!real_dev)
		return -ENODEV;

	vlan->vlan_id  = FUNC2(data[IFLA_VLAN_ID]);
	vlan->real_dev = real_dev;
	vlan->flags    = VLAN_FLAG_REORDER_HDR;

	err = FUNC6(real_dev, vlan->vlan_id);
	if (err < 0)
		return err;

	if (!tb[IFLA_MTU])
		dev->mtu = real_dev->mtu;
	else if (dev->mtu > real_dev->mtu)
		return -EINVAL;

	err = FUNC5(dev, tb, data);
	if (err < 0)
		return err;

	return FUNC4(dev);
}