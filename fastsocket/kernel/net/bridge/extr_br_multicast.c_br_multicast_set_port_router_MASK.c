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
struct net_bridge_port {scalar_t__ state; unsigned long multicast_router; int /*<<< orphan*/  multicast_router_timer; int /*<<< orphan*/  rlist; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BR_STATE_DISABLED ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct net_bridge_port *p, unsigned long val)
{
	struct net_bridge *br = p->br;
	int err = -ENOENT;

	FUNC5(&br->multicast_lock);
	if (!FUNC4(br->dev) || p->state == BR_STATE_DISABLED)
		goto unlock;

	switch (val) {
	case 0:
	case 1:
	case 2:
		p->multicast_router = val;
		err = 0;

		if (val < 2 && !FUNC3(&p->rlist))
			FUNC2(&p->rlist);

		if (val == 1)
			break;

		FUNC1(&p->multicast_router_timer);

		if (val == 0)
			break;

		FUNC0(br, p);
		break;

	default:
		err = -EINVAL;
		break;
	}

unlock:
	FUNC6(&br->multicast_lock);

	return err;
}