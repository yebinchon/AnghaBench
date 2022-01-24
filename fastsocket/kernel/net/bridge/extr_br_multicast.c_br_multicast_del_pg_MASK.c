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
struct net_bridge_port_group {int /*<<< orphan*/  rcu; int /*<<< orphan*/  query_timer; int /*<<< orphan*/  timer; int /*<<< orphan*/  mglist; struct net_bridge_port_group* next; int /*<<< orphan*/  addr; } ;
struct net_bridge_mdb_htable {int dummy; } ;
struct net_bridge_mdb_entry {int /*<<< orphan*/  timer; scalar_t__ timer_armed; int /*<<< orphan*/  mglist; struct net_bridge_port_group* ports; } ;
struct net_bridge {int /*<<< orphan*/  dev; struct net_bridge_mdb_htable* mdb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct net_bridge_mdb_entry* FUNC1 (struct net_bridge_mdb_htable*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  br_multicast_free_pg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net_bridge *br,
				struct net_bridge_port_group *pg)
{
	struct net_bridge_mdb_htable *mdb = br->mdb;
	struct net_bridge_mdb_entry *mp;
	struct net_bridge_port_group *p;
	struct net_bridge_port_group **pp;

	mp = FUNC1(mdb, &pg->addr);
	if (FUNC0(!mp))
		return;

	for (pp = &mp->ports; (p = *pp); pp = &p->next) {
		if (p != pg)
			continue;

		*pp = p->next;
		FUNC4(&p->mglist);
		FUNC3(&p->timer);
		FUNC3(&p->query_timer);
		FUNC2(&p->rcu, br_multicast_free_pg);

		if (!mp->ports && !mp->mglist && mp->timer_armed &&
		    FUNC6(br->dev))
			FUNC5(&mp->timer, jiffies);

		return;
	}

	FUNC0(1);
}