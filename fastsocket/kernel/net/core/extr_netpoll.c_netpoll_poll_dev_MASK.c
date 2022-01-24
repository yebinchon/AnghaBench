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
struct sk_buff {struct net_device* dev; } ;
struct netpoll_info {int /*<<< orphan*/  arp_tx; } ;
struct net_device_ops {int /*<<< orphan*/  (* ndo_poll_controller ) (struct net_device*) ;} ;
struct net_device {int priv_flags; int /*<<< orphan*/  npinfo; struct net_device* master; struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 int IFF_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct netpoll_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netpoll_info*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct net_device *dev)
{
	const struct net_device_ops *ops;
	struct netpoll_info *ni = FUNC2(dev->npinfo);

	if (!dev || !FUNC0(dev))
		return;

	ops = dev->netdev_ops;
	if (!ops->ndo_poll_controller)
		return;

	/* Process pending work on NIC */
	ops->ndo_poll_controller(dev);

	FUNC1(dev);

	if (dev->priv_flags & IFF_SLAVE) {
		if (ni) {
			struct net_device *bond_dev = dev->master;
			struct sk_buff *skb;
			struct netpoll_info *bond_ni = FUNC2(bond_dev->npinfo);
			while ((skb = FUNC4(&ni->arp_tx))) {
				skb->dev = bond_dev;
				FUNC5(&bond_ni->arp_tx, skb);
			}
		}
	}

	FUNC3(ni);

	FUNC7();
}