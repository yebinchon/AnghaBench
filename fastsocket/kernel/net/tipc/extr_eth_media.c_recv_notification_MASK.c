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
struct net_device {int /*<<< orphan*/  mtu; } ;
struct eth_bearer {TYPE_1__* bearer; struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 size_t MAX_ETH_BEARERS ; 
#define  NETDEV_CHANGE 134 
#define  NETDEV_CHANGEADDR 133 
#define  NETDEV_CHANGEMTU 132 
#define  NETDEV_CHANGENAME 131 
#define  NETDEV_DOWN 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct eth_bearer* eth_bearers ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *nb, unsigned long evt,
			     void *dv)
{
	struct net_device *dev = (struct net_device *)dv;
	struct eth_bearer *eb_ptr = &eth_bearers[0];
	struct eth_bearer *stop = &eth_bearers[MAX_ETH_BEARERS];

	if (!FUNC1(FUNC0(dev), &init_net))
		return NOTIFY_DONE;

	while ((eb_ptr->dev != dev)) {
		if (++eb_ptr == stop)
			return NOTIFY_DONE;	/* couldn't find device */
	}
	if (!eb_ptr->bearer)
		return NOTIFY_DONE;		/* bearer had been disabled */

	eb_ptr->bearer->mtu = dev->mtu;

	switch (evt) {
	case NETDEV_CHANGE:
		if (FUNC2(dev))
			FUNC4(eb_ptr->bearer);
		else
			FUNC3(eb_ptr->bearer->name);
		break;
	case NETDEV_UP:
		FUNC4(eb_ptr->bearer);
		break;
	case NETDEV_DOWN:
		FUNC3(eb_ptr->bearer->name);
		break;
	case NETDEV_CHANGEMTU:
	case NETDEV_CHANGEADDR:
		FUNC3(eb_ptr->bearer->name);
		FUNC4(eb_ptr->bearer);
		break;
	case NETDEV_UNREGISTER:
	case NETDEV_CHANGENAME:
		FUNC5(eb_ptr->bearer->name);
		break;
	}
	return NOTIFY_OK;
}