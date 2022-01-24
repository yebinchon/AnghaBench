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
struct vlan_dev_info {int /*<<< orphan*/  real_dev_addr; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vlan_dev_info* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
			      struct net_device *vlandev)
{
	struct vlan_dev_info *vlan = FUNC4(vlandev);

	/* May be called without an actual change */
	if (!FUNC0(vlan->real_dev_addr, dev->dev_addr))
		return;

	/* vlan address was different from the old address and is equal to
	 * the new address */
	if (FUNC0(vlandev->dev_addr, vlan->real_dev_addr) &&
	    !FUNC0(vlandev->dev_addr, dev->dev_addr))
		FUNC2(dev, vlandev->dev_addr);

	/* vlan address was equal to the old address and is different from
	 * the new address */
	if (!FUNC0(vlandev->dev_addr, vlan->real_dev_addr) &&
	    FUNC0(vlandev->dev_addr, dev->dev_addr))
		FUNC1(dev, vlandev->dev_addr);

	FUNC3(vlan->real_dev_addr, dev->dev_addr, ETH_ALEN);
}