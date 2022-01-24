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
struct net_bridge {int /*<<< orphan*/  multicast_query_timer; scalar_t__ multicast_disabled; scalar_t__ multicast_startup_queries_sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct net_bridge *br)
{
	br->multicast_startup_queries_sent = 0;

	if (br->multicast_disabled)
		return;

	FUNC0(&br->multicast_query_timer, jiffies);
}