#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ul_numnodes; int /*<<< orphan*/  ul_index; int /*<<< orphan*/  ul_pool; scalar_t__ ul_debug; } ;
typedef  TYPE_1__ uu_list_t ;
struct TYPE_11__ {struct TYPE_11__* uln_next; struct TYPE_11__* uln_prev; } ;
typedef  TYPE_2__ uu_list_node_impl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,void*,void*) ; 

__attribute__((used)) static void
FUNC4(uu_list_t *lp, uu_list_node_impl_t *np, uu_list_node_impl_t *prev,
    uu_list_node_impl_t *next)
{
	if (lp->ul_debug) {
		if (next->uln_prev != prev || prev->uln_next != next)
			FUNC3("insert(%p): internal error: %p and %p not "
			    "neighbors\n", (void *)lp, (void *)next,
			    (void *)prev);

		if (np->uln_next != FUNC2(lp->ul_pool) ||
		    np->uln_prev != NULL) {
			FUNC3("insert(%p): elem %p node %p corrupt, "
			    "not initialized, or already in a list.\n",
			    (void *)lp, FUNC1(lp, np), (void *)np);
		}
		/*
		 * invalidate outstanding uu_list_index_ts.
		 */
		lp->ul_index = FUNC0(lp->ul_index);
	}
	np->uln_next = next;
	np->uln_prev = prev;
	next->uln_prev = np;
	prev->uln_next = np;

	lp->ul_numnodes++;
}