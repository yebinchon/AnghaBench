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
struct net_bridge_mdb_entry {scalar_t__ queries_sent; int /*<<< orphan*/  mglist; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ multicast_last_member_count; int /*<<< orphan*/  multicast_lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge_mdb_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct net_bridge_mdb_entry *mp = (void *)data;
	struct net_bridge *br = mp->br;

	FUNC2(&br->multicast_lock);
	if (!FUNC1(br->dev) || !mp->mglist ||
	    mp->queries_sent >= br->multicast_last_member_count)
		goto out;

	FUNC0(mp);

out:
	FUNC3(&br->multicast_lock);
}