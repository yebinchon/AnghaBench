#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct neighbour {int nud_state; TYPE_1__* ops; int /*<<< orphan*/  output; int /*<<< orphan*/  parms; int /*<<< orphan*/  type; struct net_device* dev; } ;
struct neigh_parms {int dummy; } ;
struct in_device {struct neigh_parms* arp_parms; } ;
struct atmarp_entry {scalar_t__ expires; int /*<<< orphan*/ * vccs; struct neighbour* neigh; int /*<<< orphan*/  ip; } ;
struct TYPE_2__ {int /*<<< orphan*/  output; int /*<<< orphan*/  connected_output; } ;

/* Variables and functions */
 int EINVAL ; 
 struct atmarp_entry* FUNC0 (struct neighbour*) ; 
 int NUD_VALID ; 
 int /*<<< orphan*/  RTN_UNICAST ; 
 struct in_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ clip_neigh_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct neigh_parms*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct neighbour*,struct atmarp_entry*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct neighbour *neigh)
{
	struct atmarp_entry *entry = FUNC0(neigh);
	struct net_device *dev = neigh->dev;
	struct in_device *in_dev;
	struct neigh_parms *parms;

	FUNC5("clip_constructor (neigh %p, entry %p)\n", neigh, entry);
	neigh->type = FUNC3(&init_net, entry->ip);
	if (neigh->type != RTN_UNICAST)
		return -EINVAL;

	FUNC6();
	in_dev = FUNC1(dev);
	if (!in_dev) {
		FUNC7();
		return -EINVAL;
	}

	parms = in_dev->arp_parms;
	FUNC2(neigh->parms);
	neigh->parms = FUNC4(parms);
	FUNC7();

	neigh->ops = &clip_neigh_ops;
	neigh->output = neigh->nud_state & NUD_VALID ?
	    neigh->ops->connected_output : neigh->ops->output;
	entry->neigh = neigh;
	entry->vccs = NULL;
	entry->expires = jiffies - 1;
	return 0;
}