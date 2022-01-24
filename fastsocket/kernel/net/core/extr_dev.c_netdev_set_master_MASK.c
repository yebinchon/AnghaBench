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
struct net_device {int /*<<< orphan*/  flags; struct net_device* master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EBUSY ; 
 int /*<<< orphan*/  IFF_SLAVE ; 
 int /*<<< orphan*/  RTM_NEWLINK ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct net_device *slave, struct net_device *master)
{
	struct net_device *old = slave->master;

	FUNC0();

	if (master) {
		if (old)
			return -EBUSY;
		FUNC1(master);
	}

	slave->master = master;

	FUNC4();

	if (old)
		FUNC2(old);

	if (master)
		slave->flags |= IFF_SLAVE;
	else
		slave->flags &= ~IFF_SLAVE;

	FUNC3(RTM_NEWLINK, slave, IFF_SLAVE);
	return 0;
}