#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * addr; int /*<<< orphan*/ * prio; } ;
struct net_bridge_port {scalar_t__ state; TYPE_2__* dev; int /*<<< orphan*/  port_no; TYPE_3__ designated_bridge; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  lock; TYPE_1__* dev; } ;
typedef  TYPE_3__ bridge_id ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ BR_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*) ; 
 int FUNC3 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(unsigned long arg)
{
	struct net_bridge_port *p = (struct net_bridge_port *) arg;
	struct net_bridge *br = p->br;
	const bridge_id *id = &p->designated_bridge;
	int was_root;

	if (p->state == BR_STATE_DISABLED)
		return;


	FUNC5("%s: neighbor %.2x%.2x.%.2x:%.2x:%.2x:%.2x:%.2x:%.2x lost on port %d(%s)\n",
		br->dev->name,
		id->prio[0], id->prio[1],
		id->addr[0], id->addr[1], id->addr[2],
		id->addr[3], id->addr[4], id->addr[5],
		p->port_no, p->dev->name);

	/*
	 * According to the spec, the message age timer cannot be
	 * running when we are the root bridge. So..  this was_root
	 * check is redundant. I'm leaving it in for now, though.
	 */
	FUNC6(&br->lock);
	if (p->state == BR_STATE_DISABLED)
		goto unlock;
	was_root = FUNC3(br);

	FUNC0(p);
	FUNC2(br);
	FUNC4(br);
	if (FUNC3(br) && !was_root)
		FUNC1(br);
 unlock:
	FUNC7(&br->lock);
}