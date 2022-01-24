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
struct net_bridge_port {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  multicast_querier_timer; scalar_t__ multicast_querier_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct net_bridge_port*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_bridge *br,
					struct net_bridge_port *port,
					int saddr)
{
	if (saddr)
		FUNC1(&br->multicast_querier_timer,
			  jiffies + br->multicast_querier_interval);
	else if (FUNC2(&br->multicast_querier_timer))
		return;

	FUNC0(br, port);
}