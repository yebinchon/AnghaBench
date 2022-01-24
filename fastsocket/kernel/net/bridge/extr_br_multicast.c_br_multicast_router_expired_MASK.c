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
struct net_bridge_port {int multicast_router; int /*<<< orphan*/  rlist; int /*<<< orphan*/  multicast_router_timer; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  multicast_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct net_bridge_port *port = (void *)data;
	struct net_bridge *br = port->br;

	FUNC2(&br->multicast_lock);
	if (port->multicast_router != 1 ||
	    FUNC4(&port->multicast_router_timer) ||
	    FUNC1(&port->rlist))
		goto out;

	FUNC0(&port->rlist);

out:
	FUNC3(&br->multicast_lock);
}