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
struct vlan_dev_info {int flags; int /*<<< orphan*/  real_dev_addr; struct net_device* real_dev; } ;
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int VLAN_FLAG_GVRP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct net_device*,int) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct vlan_dev_info* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct vlan_dev_info *vlan = FUNC9(dev);
	struct net_device *real_dev = vlan->real_dev;
	int err;

	if (!(real_dev->flags & IFF_UP))
		return -ENETDOWN;

	if (FUNC0(dev->dev_addr, real_dev->dev_addr)) {
		err = FUNC3(real_dev, dev->dev_addr);
		if (err < 0)
			goto out;
	}

	if (dev->flags & IFF_ALLMULTI) {
		err = FUNC1(real_dev, 1);
		if (err < 0)
			goto del_unicast;
	}
	if (dev->flags & IFF_PROMISC) {
		err = FUNC2(real_dev, 1);
		if (err < 0)
			goto clear_allmulti;
	}

	FUNC5(vlan->real_dev_addr, real_dev->dev_addr, ETH_ALEN);

	if (vlan->flags & VLAN_FLAG_GVRP)
		FUNC10(dev);

	if (FUNC7(real_dev))
		FUNC8(dev);
	return 0;

clear_allmulti:
	if (dev->flags & IFF_ALLMULTI)
		FUNC1(real_dev, -1);
del_unicast:
	if (FUNC0(dev->dev_addr, real_dev->dev_addr))
		FUNC4(real_dev, dev->dev_addr);
out:
	FUNC6(dev);
	return err;
}