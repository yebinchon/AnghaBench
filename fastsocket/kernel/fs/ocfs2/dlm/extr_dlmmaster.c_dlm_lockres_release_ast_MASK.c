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
struct dlm_lock_resource {int state; int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; scalar_t__ migration_pending; int /*<<< orphan*/  asts_reserved; } ;
struct dlm_ctxt {int /*<<< orphan*/  migration_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_LOCK_RES_MIGRATING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dlm_ctxt *dlm,
			     struct dlm_lock_resource *res)
{
	if (!FUNC1(&res->asts_reserved, &res->spinlock))
		return;

	if (!res->migration_pending) {
		FUNC2(&res->spinlock);
		return;
	}

	FUNC0(res->state & DLM_LOCK_RES_MIGRATING);
	res->migration_pending = 0;
	res->state |= DLM_LOCK_RES_MIGRATING;
	FUNC2(&res->spinlock);
	FUNC3(&res->wq);
	FUNC3(&dlm->migration_wq);
}