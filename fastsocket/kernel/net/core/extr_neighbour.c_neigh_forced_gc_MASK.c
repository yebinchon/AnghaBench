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
struct neighbour {int nud_state; int dead; struct neighbour* next; int /*<<< orphan*/  lock; int /*<<< orphan*/  refcnt; } ;
struct neigh_table {int hash_mask; int /*<<< orphan*/  lock; int /*<<< orphan*/  last_flush; struct neighbour** hash_buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct neigh_table*,int /*<<< orphan*/ ) ; 
 int NUD_PERMANENT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  forced_gc_runs ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct neigh_table *tbl)
{
	int shrunk = 0;
	int i;

	FUNC0(tbl, forced_gc_runs);

	FUNC4(&tbl->lock);
	for (i = 0; i <= tbl->hash_mask; i++) {
		struct neighbour *n, **np;

		np = &tbl->hash_buckets[i];
		while ((n = *np) != NULL) {
			/* Neighbour record may be discarded if:
			 * - nobody refers to it.
			 * - it is not permanent
			 */
			FUNC3(&n->lock);
			if (FUNC1(&n->refcnt) == 1 &&
			    !(n->nud_state & NUD_PERMANENT)) {
				*np	= n->next;
				n->dead = 1;
				shrunk	= 1;
				FUNC5(&n->lock);
				FUNC2(n);
				continue;
			}
			FUNC5(&n->lock);
			np = &n->next;
		}
	}

	tbl->last_flush = jiffies;

	FUNC6(&tbl->lock);

	return shrunk;
}