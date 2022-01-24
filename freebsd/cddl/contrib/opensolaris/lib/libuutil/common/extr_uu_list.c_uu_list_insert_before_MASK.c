#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * uln_prev; } ;
struct TYPE_9__ {scalar_t__ ul_debug; scalar_t__ ul_sorted; TYPE_2__ ul_null_node; } ;
typedef  TYPE_1__ uu_list_t ;
typedef  TYPE_2__ uu_list_node_impl_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  UU_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(uu_list_t *lp, void *target, void *elem)
{
	uu_list_node_impl_t *np = FUNC0(lp, target);

	if (target == NULL)
		np = &lp->ul_null_node;

	if (lp->ul_debug) {
		if (np->uln_prev == NULL)
			FUNC2("uu_list_insert_before(%p, %p, %p): %p is "
			    "not currently on a list\n",
			    (void *)lp, target, elem, target);
	}
	if (lp->ul_sorted) {
		if (lp->ul_debug)
			FUNC2("uu_list_insert_before(%p, ...): list is "
			    "UU_LIST_SORTED\n", (void *)lp);
		FUNC3(UU_ERROR_NOT_SUPPORTED);
		return (-1);
	}

	FUNC1(lp, FUNC0(lp, elem), np->uln_prev, np);
	return (0);
}