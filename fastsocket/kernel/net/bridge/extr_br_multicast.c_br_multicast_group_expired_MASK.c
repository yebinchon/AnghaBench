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
struct net_bridge_mdb_htable {size_t ver; int /*<<< orphan*/  size; } ;
struct net_bridge_mdb_entry {int mglist; int /*<<< orphan*/  rcu; int /*<<< orphan*/  query_timer; int /*<<< orphan*/ * hlist; scalar_t__ ports; int /*<<< orphan*/  timer; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  multicast_lock; struct net_bridge_mdb_htable* mdb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  br_multicast_free_group ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct net_bridge_mdb_entry *mp = (void *)data;
	struct net_bridge *br = mp->br;
	struct net_bridge_mdb_htable *mdb;

	FUNC4(&br->multicast_lock);
	if (!FUNC3(br->dev) || FUNC6(&mp->timer))
		goto out;

	mp->mglist = false;

	if (mp->ports)
		goto out;

	mdb = br->mdb;
	FUNC2(&mp->hlist[mdb->ver]);
	mdb->size--;

	FUNC1(&mp->query_timer);
	FUNC0(&mp->rcu, br_multicast_free_group);

out:
	FUNC5(&br->multicast_lock);
}