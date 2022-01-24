#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int mtu; } ;
struct TYPE_4__ {int* metrics; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct net_bridge {TYPE_3__ fake_rtable; } ;

/* Variables and functions */
 int EINVAL ; 
 int RTAX_MTU ; 
 int FUNC0 (struct net_bridge*) ; 
 struct net_bridge* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, int new_mtu)
{
	struct net_bridge *br = FUNC1(dev);
	if (new_mtu < 68 || new_mtu > FUNC0(br))
		return -EINVAL;

	dev->mtu = new_mtu;

#ifdef CONFIG_BRIDGE_NETFILTER
	/* remember the MTU in the rtable for PMTU */
	br->fake_rtable.u.dst.metrics[RTAX_MTU - 1] = new_mtu;
#endif

	return 0;
}