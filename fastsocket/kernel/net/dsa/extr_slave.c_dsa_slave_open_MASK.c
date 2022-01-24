#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;
struct dsa_slave_priv {TYPE_2__* parent; } ;
struct TYPE_4__ {TYPE_1__* dst; } ;
struct TYPE_3__ {struct net_device* master_netdev; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct net_device*,int) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct dsa_slave_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct dsa_slave_priv *p = FUNC5(dev);
	struct net_device *master = p->parent->dst->master_netdev;
	int err;

	if (!(master->flags & IFF_UP))
		return -ENETDOWN;

	if (FUNC0(dev->dev_addr, master->dev_addr)) {
		err = FUNC3(master, dev->dev_addr);
		if (err < 0)
			goto out;
	}

	if (dev->flags & IFF_ALLMULTI) {
		err = FUNC1(master, 1);
		if (err < 0)
			goto del_unicast;
	}
	if (dev->flags & IFF_PROMISC) {
		err = FUNC2(master, 1);
		if (err < 0)
			goto clear_allmulti;
	}

	return 0;

clear_allmulti:
	if (dev->flags & IFF_ALLMULTI)
		FUNC1(master, -1);
del_unicast:
	if (FUNC0(dev->dev_addr, master->dev_addr))
		FUNC4(master, dev->dev_addr);
out:
	return err;
}