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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;
struct dsa_slave_priv {TYPE_1__* parent; } ;
struct TYPE_4__ {struct net_device* master_netdev; } ;
struct TYPE_3__ {TYPE_2__* dst; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IFF_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dsa_slave_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, void *a)
{
	struct dsa_slave_priv *p = FUNC5(dev);
	struct net_device *master = p->parent->dst->master_netdev;
	struct sockaddr *addr = a;
	int err;

	if (!FUNC3(addr->sa_data))
		return -EADDRNOTAVAIL;

	if (!(dev->flags & IFF_UP))
		goto out;

	if (FUNC0(addr->sa_data, master->dev_addr)) {
		err = FUNC1(master, addr->sa_data);
		if (err < 0)
			return err;
	}

	if (FUNC0(dev->dev_addr, master->dev_addr))
		FUNC2(master, dev->dev_addr);

out:
	FUNC4(dev->dev_addr, addr->sa_data, ETH_ALEN);

	return 0;
}