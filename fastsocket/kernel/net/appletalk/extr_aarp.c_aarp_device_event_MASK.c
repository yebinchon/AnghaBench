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
struct net_device {int dummy; } ;

/* Variables and functions */
 int AARP_HASH_SIZE ; 
 unsigned long NETDEV_DOWN ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  aarp_lock ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * proxies ; 
 int /*<<< orphan*/ * resolved ; 
 int /*<<< orphan*/ * unresolved ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *this, unsigned long event,
			     void *ptr)
{
	struct net_device *dev = ptr;
	int ct;

	if (!FUNC2(FUNC1(dev), &init_net))
		return NOTIFY_DONE;

	if (event == NETDEV_DOWN) {
		FUNC3(&aarp_lock);

		for (ct = 0; ct < AARP_HASH_SIZE; ct++) {
			FUNC0(&resolved[ct], dev);
			FUNC0(&unresolved[ct], dev);
			FUNC0(&proxies[ct], dev);
		}

		FUNC4(&aarp_lock);
	}
	return NOTIFY_DONE;
}