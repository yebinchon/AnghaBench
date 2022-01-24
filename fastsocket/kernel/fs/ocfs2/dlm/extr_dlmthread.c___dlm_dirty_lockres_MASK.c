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
struct dlm_lock_resource {scalar_t__ owner; int state; int /*<<< orphan*/  dirty; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {scalar_t__ node_num; int /*<<< orphan*/  dirty_list; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int DLM_LOCK_RES_BLOCK_DIRTY ; 
 int DLM_LOCK_RES_DIRTY ; 
 int DLM_LOCK_RES_MIGRATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dlm_ctxt*,struct dlm_lock_resource*) ; 

void FUNC5(struct dlm_ctxt *dlm, struct dlm_lock_resource *res)
{
	FUNC4("dlm=%p, res=%p\n", dlm, res);

	FUNC0(&dlm->spinlock);
	FUNC0(&res->spinlock);

	/* don't shuffle secondary queues */
	if (res->owner == dlm->node_num) {
		if (res->state & (DLM_LOCK_RES_MIGRATING |
				  DLM_LOCK_RES_BLOCK_DIRTY))
		    return;

		if (FUNC3(&res->dirty)) {
			/* ref for dirty_list */
			FUNC1(res);
			FUNC2(&res->dirty, &dlm->dirty_list);
			res->state |= DLM_LOCK_RES_DIRTY;
		}
	}
}