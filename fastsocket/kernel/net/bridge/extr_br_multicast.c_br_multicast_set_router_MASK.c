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
struct net_bridge {unsigned long multicast_router; int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  multicast_router_timer; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct net_bridge *br, unsigned long val)
{
	int err = -ENOENT;

	FUNC2(&br->multicast_lock);
	if (!FUNC1(br->dev))
		goto unlock;

	switch (val) {
	case 0:
	case 2:
		FUNC0(&br->multicast_router_timer);
		/* fall through */
	case 1:
		br->multicast_router = val;
		err = 0;
		break;

	default:
		err = -EINVAL;
		break;
	}

unlock:
	FUNC3(&br->multicast_lock);

	return err;
}