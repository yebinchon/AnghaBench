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
struct vlan_dev_info {int flags; struct net_device* real_dev; } ;
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int VLAN_FLAG_GVRP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct vlan_dev_info* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct vlan_dev_info *vlan = FUNC7(dev);
	struct net_device *real_dev = vlan->real_dev;

	if (vlan->flags & VLAN_FLAG_GVRP)
		FUNC8(dev);

	FUNC1(real_dev, dev);
	FUNC5(real_dev, dev);
	if (dev->flags & IFF_ALLMULTI)
		FUNC2(real_dev, -1);
	if (dev->flags & IFF_PROMISC)
		FUNC3(real_dev, -1);

	if (FUNC0(dev->dev_addr, real_dev->dev_addr))
		FUNC4(real_dev, dev->dev_addr);

	FUNC6(dev);
	return 0;
}