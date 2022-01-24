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
struct br_ip {int dummy; } ;
struct net_bridge_port_group {int /*<<< orphan*/  query_timer; int /*<<< orphan*/  timer; int /*<<< orphan*/  mglist; struct net_bridge_port_group* next; struct net_bridge_port* port; struct br_ip addr; } ;
struct net_bridge_port {scalar_t__ state; int /*<<< orphan*/  mglist; } ;
struct net_bridge_mdb_entry {int mglist; struct net_bridge_port_group* ports; } ;
struct net_bridge {int /*<<< orphan*/  multicast_lock; scalar_t__ multicast_membership_interval; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BR_STATE_DISABLED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct net_bridge_mdb_entry*) ; 
 int FUNC1 (struct net_bridge_mdb_entry*) ; 
 struct net_bridge_mdb_entry* FUNC2 (struct net_bridge*,struct net_bridge_port*,struct br_ip*) ; 
 int /*<<< orphan*/  br_multicast_port_group_expired ; 
 int /*<<< orphan*/  br_multicast_port_group_query_expired ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 struct net_bridge_port_group* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_bridge_port_group*,struct net_bridge_port_group*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct net_bridge *br,
				  struct net_bridge_port *port,
				  struct br_ip *group)
{
	struct net_bridge_mdb_entry *mp;
	struct net_bridge_port_group *p;
	struct net_bridge_port_group **pp;
	int err;

	FUNC9(&br->multicast_lock);
	if (!FUNC6(br->dev) ||
	    (port && port->state == BR_STATE_DISABLED))
		goto out;

	mp = FUNC2(br, port, group);
	err = FUNC1(mp);
	if (FUNC11(FUNC0(mp) || !mp))
		goto err;

	if (!port) {
		mp->mglist = true;
		goto out;
	}

	for (pp = &mp->ports; (p = *pp); pp = &p->next) {
		if (p->port == port) {
			/* We already have a portgroup, update the timer.  */
			FUNC5(&p->timer,
				  jiffies + br->multicast_membership_interval);
			goto out;
		}
		if ((unsigned long)p->port < (unsigned long)port)
			break;
	}

	p = FUNC4(sizeof(*p), GFP_ATOMIC);
	err = -ENOMEM;
	if (FUNC11(!p))
		goto err;

	p->addr = *group;
	p->port = port;
	p->next = *pp;
	FUNC3(&p->mglist, &port->mglist);
	FUNC8(&p->timer, br_multicast_port_group_expired,
		    (unsigned long)p);
	FUNC8(&p->query_timer, br_multicast_port_group_query_expired,
		    (unsigned long)p);

	FUNC7(*pp, p);

out:
	err = 0;

err:
	FUNC10(&br->multicast_lock);
	return err;
}