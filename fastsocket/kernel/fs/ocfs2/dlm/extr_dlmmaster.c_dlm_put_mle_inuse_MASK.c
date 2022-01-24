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
struct dlm_master_list_entry {int /*<<< orphan*/  inuse; struct dlm_ctxt* dlm; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  master_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_master_list_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dlm_master_list_entry *mle)
{
	struct dlm_ctxt *dlm;
	dlm = mle->dlm;

	FUNC1(&dlm->spinlock);
	FUNC1(&dlm->master_lock);
	mle->inuse--;
	FUNC0(mle);
	FUNC2(&dlm->master_lock);
	FUNC2(&dlm->spinlock);

}