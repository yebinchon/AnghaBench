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
struct octeon_ethernet {int /*<<< orphan*/  poll; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ndo_stop ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  cvm_oct_sgmii_poll ; 
 struct octeon_ethernet* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

int FUNC4(struct net_device *dev)
{
	struct octeon_ethernet *priv = FUNC1(dev);
	FUNC0(dev);
	dev->netdev_ops->ndo_stop(dev);
	if (!FUNC2())
		priv->poll = cvm_oct_sgmii_poll;

	/* FIXME: Need autoneg logic */
	return 0;
}