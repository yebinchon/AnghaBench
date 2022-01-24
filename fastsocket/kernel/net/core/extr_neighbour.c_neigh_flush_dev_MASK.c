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
struct net_device {int dummy; } ;
struct neighbour {int dead; int nud_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  output; int /*<<< orphan*/  arp_queue; int /*<<< orphan*/  refcnt; struct neighbour* next; struct net_device* dev; } ;
struct neigh_table {int hash_mask; struct neighbour** hash_buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct neighbour*) ; 
 int NUD_NOARP ; 
 int NUD_NONE ; 
 int NUD_VALID ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  neigh_blackhole ; 
 int /*<<< orphan*/  FUNC2 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC3 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct neigh_table *tbl, struct net_device *dev)
{
	int i;

	for (i = 0; i <= tbl->hash_mask; i++) {
		struct neighbour *n, **np = &tbl->hash_buckets[i];

		while ((n = *np) != NULL) {
			if (dev && n->dev != dev) {
				np = &n->next;
				continue;
			}
			*np = n->next;
			FUNC5(&n->lock);
			FUNC3(n);
			n->dead = 1;

			if (FUNC1(&n->refcnt) != 1) {
				/* The most unpleasant situation.
				   We must destroy neighbour entry,
				   but someone still uses it.

				   The destroy will be delayed until
				   the last user releases us, but
				   we must kill timers etc. and move
				   it to safe state.
				 */
				FUNC4(&n->arp_queue);
				n->output = neigh_blackhole;
				if (n->nud_state & NUD_VALID)
					n->nud_state = NUD_NOARP;
				else
					n->nud_state = NUD_NONE;
				FUNC0("neigh %p is stray.\n", n);
			}
			FUNC6(&n->lock);
			FUNC2(n);
		}
	}
}