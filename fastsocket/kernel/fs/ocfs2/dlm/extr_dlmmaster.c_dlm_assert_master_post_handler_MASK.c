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
struct dlm_lock_resource {int /*<<< orphan*/  wq; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_RES_SETREF_INPROG ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(int status, void *data, void *ret_data)
{
	struct dlm_lock_resource *res = (struct dlm_lock_resource *)ret_data;

	if (ret_data) {
		FUNC1(&res->spinlock);
		res->state &= ~DLM_LOCK_RES_SETREF_INPROG;
		FUNC2(&res->spinlock);
		FUNC3(&res->wq);
		FUNC0(res);
	}
	return;
}