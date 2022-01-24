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
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct net_device*) ; 
 struct dsa_slave_priv* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct dsa_slave_priv *p = FUNC6(dev);
	struct net_device *master = p->parent->dst->master_netdev;

	FUNC1(master, dev);
	FUNC5(master, dev);
	if (dev->flags & IFF_ALLMULTI)
		FUNC2(master, -1);
	if (dev->flags & IFF_PROMISC)
		FUNC3(master, -1);

	if (FUNC0(dev->dev_addr, master->dev_addr))
		FUNC4(master, dev->dev_addr);

	return 0;
}