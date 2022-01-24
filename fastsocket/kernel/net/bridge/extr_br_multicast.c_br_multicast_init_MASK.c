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
struct net_bridge {int hash_elasticity; int hash_max; int multicast_router; int multicast_last_member_count; int multicast_startup_query_count; int multicast_last_member_interval; int multicast_query_response_interval; int multicast_startup_query_interval; int multicast_query_interval; int multicast_querier_interval; int multicast_membership_interval; int /*<<< orphan*/  multicast_query_timer; int /*<<< orphan*/  multicast_querier_timer; int /*<<< orphan*/  multicast_router_timer; int /*<<< orphan*/  multicast_lock; scalar_t__ multicast_querier; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  br_multicast_local_router_expired ; 
 int /*<<< orphan*/  br_multicast_querier_expired ; 
 int /*<<< orphan*/  br_multicast_query_expired ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct net_bridge *br)
{
	br->hash_elasticity = 4;
	br->hash_max = 512;

	br->multicast_router = 1;
	br->multicast_querier = 0;
	br->multicast_last_member_count = 2;
	br->multicast_startup_query_count = 2;

	br->multicast_last_member_interval = HZ;
	br->multicast_query_response_interval = 10 * HZ;
	br->multicast_startup_query_interval = 125 * HZ / 4;
	br->multicast_query_interval = 125 * HZ;
	br->multicast_querier_interval = 255 * HZ;
	br->multicast_membership_interval = 260 * HZ;

	FUNC2(&br->multicast_lock);
	FUNC1(&br->multicast_router_timer,
		    br_multicast_local_router_expired, 0);
	FUNC1(&br->multicast_querier_timer,
		    br_multicast_querier_expired, (unsigned long)br);
	FUNC1(&br->multicast_query_timer, br_multicast_query_expired,
		    (unsigned long)br);
	FUNC0();
}