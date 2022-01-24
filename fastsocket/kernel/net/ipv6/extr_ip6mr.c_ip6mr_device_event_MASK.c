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
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int maxvif; struct mif_device* vif6_table; } ;
struct net {TYPE_1__ ipv6; } ;
struct mif_device {struct net_device* dev; } ;

/* Variables and functions */
 unsigned long NETDEV_UNREGISTER ; 
 int NOTIFY_DONE ; 
 struct net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *this,
			      unsigned long event, void *ptr)
{
	struct net_device *dev = ptr;
	struct net *net = FUNC0(dev);
	struct mif_device *v;
	int ct;

	if (event != NETDEV_UNREGISTER)
		return NOTIFY_DONE;

	v = &net->ipv6.vif6_table[0];
	for (ct = 0; ct < net->ipv6.maxvif; ct++, v++) {
		if (v->dev == dev)
			FUNC1(net, ct);
	}
	return NOTIFY_DONE;
}