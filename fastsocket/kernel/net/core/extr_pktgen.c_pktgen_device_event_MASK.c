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
struct notifier_block {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  NETDEV_CHANGENAME 129 
#define  NETDEV_UNREGISTER 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *unused,
			       unsigned long event, void *ptr)
{
	struct net_device *dev = ptr;

	if (!FUNC1(FUNC0(dev), &init_net))
		return NOTIFY_DONE;

	/* It is OK that we do not hold the group lock right now,
	 * as we run under the RTNL lock.
	 */

	switch (event) {
	case NETDEV_CHANGENAME:
		FUNC2(dev);
		break;

	case NETDEV_UNREGISTER:
		FUNC3(dev->name);
		break;
	}

	return NOTIFY_DONE;
}