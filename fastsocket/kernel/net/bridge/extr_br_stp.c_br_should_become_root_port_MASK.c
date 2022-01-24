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
typedef  int /*<<< orphan*/  u16 ;
struct net_bridge_port {scalar_t__ state; scalar_t__ designated_cost; scalar_t__ path_cost; scalar_t__ designated_port; scalar_t__ port_id; int /*<<< orphan*/  designated_bridge; int /*<<< orphan*/  designated_root; struct net_bridge* br; } ;
struct net_bridge {int /*<<< orphan*/  bridge_id; } ;

/* Variables and functions */
 scalar_t__ BR_STATE_DISABLED ; 
 struct net_bridge_port* FUNC0 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_bridge_port const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(const struct net_bridge_port *p,
				      u16 root_port)
{
	struct net_bridge *br;
	struct net_bridge_port *rp;
	int t;

	br = p->br;
	if (p->state == BR_STATE_DISABLED ||
	    FUNC1(p))
		return 0;

	if (FUNC2(&br->bridge_id, &p->designated_root, 8) <= 0)
		return 0;

	if (!root_port)
		return 1;

	rp = FUNC0(br, root_port);

	t = FUNC2(&p->designated_root, &rp->designated_root, 8);
	if (t < 0)
		return 1;
	else if (t > 0)
		return 0;

	if (p->designated_cost + p->path_cost <
	    rp->designated_cost + rp->path_cost)
		return 1;
	else if (p->designated_cost + p->path_cost >
		 rp->designated_cost + rp->path_cost)
		return 0;

	t = FUNC2(&p->designated_bridge, &rp->designated_bridge, 8);
	if (t < 0)
		return 1;
	else if (t > 0)
		return 0;

	if (p->designated_port < rp->designated_port)
		return 1;
	else if (p->designated_port > rp->designated_port)
		return 0;

	if (p->port_id < rp->port_id)
		return 1;

	return 0;
}