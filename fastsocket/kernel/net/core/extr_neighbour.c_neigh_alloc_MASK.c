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
struct neighbour {unsigned long updated; unsigned long used; int dead; int /*<<< orphan*/  refcnt; struct neigh_table* tbl; int /*<<< orphan*/  timer; int /*<<< orphan*/  parms; int /*<<< orphan*/  output; int /*<<< orphan*/  nud_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  arp_queue; } ;
struct neigh_table {int gc_thresh3; int gc_thresh2; int /*<<< orphan*/  entries; int /*<<< orphan*/  parms; int /*<<< orphan*/  kmem_cachep; scalar_t__ last_flush; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct neigh_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUD_NONE ; 
 int /*<<< orphan*/  allocs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 unsigned long jiffies ; 
 struct neighbour* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  neigh_blackhole ; 
 int /*<<< orphan*/  FUNC5 (struct neigh_table*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  neigh_timer_handler ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned long,scalar_t__) ; 

__attribute__((used)) static struct neighbour *FUNC11(struct neigh_table *tbl)
{
	struct neighbour *n = NULL;
	unsigned long now = jiffies;
	int entries;

	entries = FUNC2(&tbl->entries) - 1;
	if (entries >= tbl->gc_thresh3 ||
	    (entries >= tbl->gc_thresh2 &&
	     FUNC10(now, tbl->last_flush + 5 * HZ))) {
		if (!FUNC5(tbl) &&
		    entries >= tbl->gc_thresh3)
			goto out_entries;
	}

	n = FUNC4(tbl->kmem_cachep, GFP_ATOMIC);
	if (!n)
		goto out_entries;

	FUNC9(&n->arp_queue);
	FUNC7(&n->lock);
	n->updated	  = n->used = now;
	n->nud_state	  = NUD_NONE;
	n->output	  = neigh_blackhole;
	n->parms	  = FUNC6(&tbl->parms);
	FUNC8(&n->timer, neigh_timer_handler, (unsigned long)n);

	FUNC0(tbl, allocs);
	n->tbl		  = tbl;
	FUNC3(&n->refcnt, 1);
	n->dead		  = 1;
out:
	return n;

out_entries:
	FUNC1(&tbl->entries);
	goto out;
}