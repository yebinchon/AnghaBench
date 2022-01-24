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
struct dlm_lock_resource {int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int /*<<< orphan*/  dlm_thread_wq; int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct dlm_ctxt*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct dlm_ctxt *dlm, struct dlm_lock_resource *res)
{
	FUNC1("dlm=%p, res=%p\n", dlm, res);
	if (res) {
		FUNC2(&dlm->spinlock);
		FUNC2(&res->spinlock);
		FUNC0(dlm, res);
		FUNC3(&res->spinlock);
		FUNC3(&dlm->spinlock);
	}
	FUNC4(&dlm->dlm_thread_wq);
}