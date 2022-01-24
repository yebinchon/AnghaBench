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
struct x25_neigh {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 scalar_t__ ARPHRD_X25 ; 
#define  NETDEV_DOWN 130 
#define  NETDEV_GOING_DOWN 129 
#define  NETDEV_UP 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct x25_neigh* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct x25_neigh*) ; 

__attribute__((used)) static int FUNC9(struct notifier_block *this, unsigned long event,
			    void *ptr)
{
	struct net_device *dev = ptr;
	struct x25_neigh *nb;

	if (!FUNC1(FUNC0(dev), &init_net))
		return NOTIFY_DONE;

	if (dev->type == ARPHRD_X25
#if defined(CONFIG_LLC) || defined(CONFIG_LLC_MODULE)
	 || dev->type == ARPHRD_ETHER
#endif
	 ) {
		switch (event) {
			case NETDEV_UP:
				FUNC5(dev);
				break;
			case NETDEV_GOING_DOWN:
				nb = FUNC2(dev);
				if (nb) {
					FUNC8(nb);
					FUNC6(nb);
				}
				break;
			case NETDEV_DOWN:
				FUNC3(dev);
				FUNC7(dev);
				FUNC4(dev);
				break;
		}
	}

	return NOTIFY_DONE;
}