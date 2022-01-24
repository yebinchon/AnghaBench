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
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  dev; scalar_t__ multicast_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct net_bridge_port *port)
{
	struct net_bridge *br = port->br;

	FUNC2(&br->multicast_lock);
	if (br->multicast_disabled || !FUNC1(br->dev))
		goto out;

	FUNC0(port);

out:
	FUNC3(&br->multicast_lock);
}