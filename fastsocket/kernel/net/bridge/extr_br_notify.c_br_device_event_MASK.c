#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct notifier_block {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; struct net_bridge_port* br_port; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  lock; TYPE_1__* dev; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int IFF_UP ; 
#define  NETDEV_CHANGE 134 
#define  NETDEV_CHANGEADDR 133 
#define  NETDEV_CHANGEMTU 132 
#define  NETDEV_DOWN 131 
#define  NETDEV_FEAT_CHANGE 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct notifier_block *unused, unsigned long event, void *ptr)
{
	struct net_device *dev = ptr;
	struct net_bridge_port *p = dev->br_port;
	struct net_bridge *br;

	/* not a port of a bridge */
	if (p == NULL)
		return NOTIFY_DONE;

	br = p->br;

	switch (event) {
	case NETDEV_CHANGEMTU:
		FUNC9(br->dev, FUNC4(br));
		break;

	case NETDEV_CHANGEADDR:
		FUNC12(&br->lock);
		FUNC1(p, dev->dev_addr);
		FUNC8(br);
		FUNC13(&br->lock);
		break;

	case NETDEV_CHANGE:
		FUNC5(p);
		break;

	case NETDEV_FEAT_CHANGE:
		if (FUNC11(br->dev))
			FUNC2(br);
		break;

	case NETDEV_DOWN:
		FUNC12(&br->lock);
		if (br->dev->flags & IFF_UP)
			FUNC6(p);
		FUNC13(&br->lock);
		break;

	case NETDEV_UP:
		if (FUNC10(dev) && (br->dev->flags & IFF_UP)) {
			FUNC12(&br->lock);
			FUNC7(p);
			FUNC13(&br->lock);
		}
		break;

	case NETDEV_UNREGISTER:
		FUNC0(br, dev);
		break;
	}

	/* Events that may cause spanning tree to refresh */
	if (event == NETDEV_CHANGEADDR || event == NETDEV_UP ||
	    event == NETDEV_CHANGE || event == NETDEV_DOWN)
		FUNC3(RTM_NEWLINK, p);

	return NOTIFY_DONE;
}