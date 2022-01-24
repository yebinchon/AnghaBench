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
struct net_device {int /*<<< orphan*/ * name; } ;
struct mpoa_client {int /*<<< orphan*/ * mpoad_vcc; struct net_device* dev; int /*<<< orphan*/  dev_num; } ;
struct lec_priv {int lane_version; int /*<<< orphan*/  itfnum; TYPE_1__* lane2_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  associate_indicator; } ;

/* Variables and functions */
#define  NETDEV_CHANGE 136 
#define  NETDEV_CHANGEADDR 135 
#define  NETDEV_CHANGEMTU 134 
#define  NETDEV_DOWN 133 
#define  NETDEV_GOING_DOWN 132 
#define  NETDEV_REBOOT 131 
#define  NETDEV_REGISTER 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 struct mpoa_client* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 struct mpoa_client* FUNC5 (int /*<<< orphan*/ ) ; 
 struct mpoa_client* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  lane2_assoc_ind ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lec_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct mpoa_client*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct mpoa_client*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC13(struct notifier_block *mpoa_notifier, unsigned long event, void *dev_ptr)
{
	struct net_device *dev;
	struct mpoa_client *mpc;
	struct lec_priv *priv;

	dev = (struct net_device *)dev_ptr;

	if (!FUNC7(FUNC2(dev), &init_net))
		return NOTIFY_DONE;

	if (dev->name == NULL || FUNC12(dev->name, "lec", 3))
		return NOTIFY_DONE; /* we are only interested in lec:s */

	switch (event) {
	case NETDEV_REGISTER:       /* a new lec device was allocated */
		priv = FUNC8(dev);
		if (priv->lane_version < 2)
			break;
		priv->lane2_ops->associate_indicator = lane2_assoc_ind;
		mpc = FUNC5(priv->itfnum);
		if (mpc == NULL) {
			FUNC4("mpoa: mpoa_event_listener: allocating new mpc for %s\n",
			       dev->name);
			mpc = FUNC0();
			if (mpc == NULL) {
				FUNC9("mpoa: mpoa_event_listener: no new mpc");
				break;
			}
		}
		mpc->dev_num = priv->itfnum;
		mpc->dev = dev;
		FUNC1(dev);
		FUNC4("mpoa: (%s) was initialized\n", dev->name);
		break;
	case NETDEV_UNREGISTER:
		/* the lec device was deallocated */
		mpc = FUNC6(dev);
		if (mpc == NULL)
			break;
		FUNC4("mpoa: device (%s) was deallocated\n", dev->name);
		FUNC11(mpc);
		FUNC3(mpc->dev);
		mpc->dev = NULL;
		break;
	case NETDEV_UP:
		/* the dev was ifconfig'ed up */
		mpc = FUNC6(dev);
		if (mpc == NULL)
			break;
		if (mpc->mpoad_vcc != NULL) {
			FUNC10(mpc, dev);
		}
		break;
	case NETDEV_DOWN:
		/* the dev was ifconfig'ed down */
		/* this means that the flow of packets from the
		 * upper layer stops
		 */
		mpc = FUNC6(dev);
		if (mpc == NULL)
			break;
		if (mpc->mpoad_vcc != NULL) {
			FUNC11(mpc);
		}
		break;
	case NETDEV_REBOOT:
	case NETDEV_CHANGE:
	case NETDEV_CHANGEMTU:
	case NETDEV_CHANGEADDR:
	case NETDEV_GOING_DOWN:
		break;
	default:
		break;
	}

	return NOTIFY_DONE;
}