#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  expires; } ;
struct net_bridge_port_group {TYPE_1__ timer; int /*<<< orphan*/  mglist; struct net_bridge_port* port; struct net_bridge_port_group* next; } ;
struct net_bridge_port {scalar_t__ state; TYPE_1__ multicast_query_timer; } ;
struct net_bridge_mdb_htable {int dummy; } ;
struct net_bridge_mdb_entry {TYPE_1__ query_timer; scalar_t__ queries_sent; TYPE_1__ timer; scalar_t__ timer_armed; scalar_t__ mglist; struct net_bridge_port_group* ports; int /*<<< orphan*/  addr; } ;
struct net_bridge {unsigned long multicast_last_member_count; unsigned long multicast_last_member_interval; int /*<<< orphan*/  multicast_lock; TYPE_1__ multicast_query_timer; TYPE_1__ multicast_querier_timer; scalar_t__ multicast_querier; struct net_bridge_mdb_htable* mdb; int /*<<< orphan*/  dev; } ;
struct br_ip {int dummy; } ;

/* Variables and functions */
 scalar_t__ BR_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ *) ; 
 struct net_bridge_mdb_entry* FUNC1 (struct net_bridge_mdb_htable*,struct br_ip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(struct net_bridge *br,
				     struct net_bridge_port *port,
				     struct br_ip *group)
{
	struct net_bridge_mdb_htable *mdb;
	struct net_bridge_mdb_entry *mp;
	struct net_bridge_port_group *p;
	unsigned long now;
	unsigned long time;

	FUNC5(&br->multicast_lock);
	if (!FUNC4(br->dev) ||
	    (port && port->state == BR_STATE_DISABLED) ||
	    FUNC8(&br->multicast_querier_timer))
		goto out;

	mdb = br->mdb;
	mp = FUNC1(mdb, group);
	if (!mp)
		goto out;

	if (br->multicast_querier &&
	    !FUNC8(&br->multicast_querier_timer)) {
		FUNC0(br, port, &mp->addr);

		time = jiffies + br->multicast_last_member_count *
				 br->multicast_last_member_interval;
		FUNC3(port ? &port->multicast_query_timer :
				 &br->multicast_query_timer, time);

		for (p = mp->ports; p; p = p->next) {
			if (p->port != port)
				continue;

			if (!FUNC2(&p->mglist) &&
			    (FUNC8(&p->timer) ?
			     FUNC7(p->timer.expires, time) :
			     FUNC9(&p->timer) >= 0)) {
				FUNC3(&p->timer, time);
			}

			break;
		}
	}

	now = jiffies;
	time = now + br->multicast_last_member_count *
		     br->multicast_last_member_interval;

	if (!port) {
		if (mp->mglist && mp->timer_armed &&
		    (FUNC8(&mp->timer) ?
		     FUNC7(mp->timer.expires, time) :
		     FUNC9(&mp->timer) >= 0)) {
			FUNC3(&mp->timer, time);

			mp->queries_sent = 0;
			FUNC3(&mp->query_timer, now);
		}
	}

out:
	FUNC6(&br->multicast_lock);
}