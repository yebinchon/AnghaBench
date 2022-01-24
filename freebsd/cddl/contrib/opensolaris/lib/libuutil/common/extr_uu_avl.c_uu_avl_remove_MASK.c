#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* uaw_next_result; scalar_t__ uaw_robust; struct TYPE_6__* uaw_next; } ;
typedef  TYPE_1__ uu_avl_walk_t ;
struct TYPE_7__ {int /*<<< orphan*/  ua_tree; TYPE_1__ ua_null_walk; int /*<<< orphan*/  ua_index; scalar_t__ ua_debug; int /*<<< orphan*/ * ua_pool; } ;
typedef  TYPE_2__ uu_avl_t ;
typedef  int /*<<< orphan*/  uu_avl_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 uintptr_t* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 uintptr_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,void*) ; 

void
FUNC6(uu_avl_t *ap, void *elem)
{
	uu_avl_walk_t *wp;
	uu_avl_pool_t *pp = ap->ua_pool;
	uintptr_t *na = FUNC1(pp, elem);

	if (ap->ua_debug) {
		/*
		 * invalidate outstanding uu_avl_index_ts.
		 */
		ap->ua_index = FUNC0(ap->ua_index);
	}

	/*
	 * Robust walkers most be advanced, if we are removing the node
	 * they are currently using.  In debug mode, non-robust walkers
	 * are also on the walker list.
	 */
	for (wp = ap->ua_null_walk.uaw_next; wp != &ap->ua_null_walk;
	    wp = wp->uaw_next) {
		if (wp->uaw_robust) {
			if (elem == wp->uaw_next_result)
				(void) FUNC3(wp, ap);
		} else if (wp->uaw_next_result != NULL) {
			FUNC5("uu_avl_remove(%p, %p): active non-robust "
			    "walker\n", (void *)ap, elem);
		}
	}

	FUNC4(&ap->ua_tree, elem);

	na[0] = FUNC2(pp);
	na[1] = 0;
}