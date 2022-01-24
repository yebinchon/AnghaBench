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
typedef  int u32 ;
struct net_device {int features; TYPE_1__* ethtool_ops; } ;
struct TYPE_2__ {int (* get_flags ) (struct net_device*) ;int /*<<< orphan*/  (* set_flags ) (struct net_device*,int) ;} ;

/* Variables and functions */
 int ETH_FLAG_LRO ; 
 int NETIF_F_LRO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 struct net_device* FUNC4 (struct net_device*) ; 

void FUNC5(struct net_device *dev)
{
	/*
	 * If we're trying to disable lro on a vlan device
	 * use the underlying physical device instead
	 */
	if (FUNC1(dev))
		dev = FUNC4(dev);

	if (dev->ethtool_ops && dev->ethtool_ops->get_flags &&
	    dev->ethtool_ops->set_flags) {
		u32 flags = dev->ethtool_ops->get_flags(dev);
		if (flags & ETH_FLAG_LRO) {
			flags &= ~ETH_FLAG_LRO;
			dev->ethtool_ops->set_flags(dev, flags);
		}
	}
	FUNC0(dev->features & NETIF_F_LRO);
}