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
struct net_device_ops {scalar_t__ (* ndo_neigh_setup ) (struct net_device*,struct neigh_parms*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct neigh_parms* next; } ;
struct neigh_table {int /*<<< orphan*/  lock; TYPE_1__ parms; } ;
struct neigh_parms {struct neigh_parms* next; int /*<<< orphan*/ * sysctl_table; int /*<<< orphan*/  net; struct net_device* dev; int /*<<< orphan*/  base_reachable_time; int /*<<< orphan*/  reachable_time; int /*<<< orphan*/  refcnt; struct neigh_table* tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct neigh_parms*) ; 
 struct neigh_parms* FUNC5 (struct neigh_parms*,int,int /*<<< orphan*/ ) ; 
 struct neigh_parms* FUNC6 (struct neigh_table*,struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct net_device*,struct neigh_parms*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct neigh_parms *FUNC12(struct net_device *dev,
				      struct neigh_table *tbl)
{
	struct neigh_parms *p, *ref;
	struct net *net = FUNC2(dev);
	const struct net_device_ops *ops = dev->netdev_ops;

	ref = FUNC6(tbl, net, 0);
	if (!ref)
		return NULL;

	p = FUNC5(ref, sizeof(*p), GFP_KERNEL);
	if (p) {
		p->tbl		  = tbl;
		FUNC0(&p->refcnt, 1);
		p->reachable_time =
				FUNC7(p->base_reachable_time);

		if (ops->ndo_neigh_setup && ops->ndo_neigh_setup(dev, p)) {
			FUNC4(p);
			return NULL;
		}

		FUNC1(dev);
		p->dev = dev;
		FUNC10(&p->net, FUNC3(net));
		p->sysctl_table = NULL;
		FUNC9(&tbl->lock);
		p->next		= tbl->parms.next;
		tbl->parms.next = p;
		FUNC11(&tbl->lock);
	}
	return p;
}