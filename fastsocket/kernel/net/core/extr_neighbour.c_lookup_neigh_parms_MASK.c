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
struct net {int dummy; } ;
struct neigh_parms {TYPE_1__* dev; struct neigh_parms* next; } ;
struct neigh_table {struct neigh_parms parms; } ;
struct TYPE_2__ {int ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct neigh_parms*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct net*) ; 

__attribute__((used)) static inline struct neigh_parms *FUNC2(struct neigh_table *tbl,
						      struct net *net, int ifindex)
{
	struct neigh_parms *p;

	for (p = &tbl->parms; p; p = p->next) {
		if ((p->dev && p->dev->ifindex == ifindex && FUNC1(FUNC0(p), net)) ||
		    (!p->dev && !ifindex))
			return p;
	}

	return NULL;
}