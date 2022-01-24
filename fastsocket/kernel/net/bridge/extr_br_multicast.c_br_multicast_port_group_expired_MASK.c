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
struct net_bridge_port_group {int /*<<< orphan*/  mglist; int /*<<< orphan*/  timer; TYPE_1__* port; } ;
struct net_bridge {int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct net_bridge* br; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct net_bridge_port_group*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct net_bridge_port_group *pg = (void *)data;
	struct net_bridge *br = pg->port->br;

	FUNC3(&br->multicast_lock);
	if (!FUNC2(br->dev) || FUNC5(&pg->timer) ||
	    FUNC1(&pg->mglist))
		goto out;

	FUNC0(br, pg);

out:
	FUNC4(&br->multicast_lock);
}