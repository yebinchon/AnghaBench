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
struct neigh_parms {int dead; int /*<<< orphan*/  rcu_head; scalar_t__ dev; struct neigh_parms* next; } ;
struct neigh_table {int /*<<< orphan*/  lock; struct neigh_parms parms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  neigh_rcu_free_parms ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct neigh_table *tbl, struct neigh_parms *parms)
{
	struct neigh_parms **p;

	if (!parms || parms == &tbl->parms)
		return;
	FUNC3(&tbl->lock);
	for (p = &tbl->parms.next; *p; p = &(*p)->next) {
		if (*p == parms) {
			*p = parms->next;
			parms->dead = 1;
			FUNC4(&tbl->lock);
			if (parms->dev)
				FUNC2(parms->dev);
			FUNC1(&parms->rcu_head, neigh_rcu_free_parms);
			return;
		}
	}
	FUNC4(&tbl->lock);
	FUNC0("neigh_parms_release: not found\n");
}