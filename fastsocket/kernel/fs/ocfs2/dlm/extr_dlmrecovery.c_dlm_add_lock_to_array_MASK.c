#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dlm_migratable_lockres {int num_locks; int /*<<< orphan*/  lvb; struct dlm_migratable_lock* ml; } ;
struct dlm_migratable_lock {scalar_t__ type; int list; int /*<<< orphan*/  node; int /*<<< orphan*/  flags; int /*<<< orphan*/  highest_blocked; int /*<<< orphan*/  convert_type; int /*<<< orphan*/  cookie; } ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  node; int /*<<< orphan*/  highest_blocked; int /*<<< orphan*/  convert_type; int /*<<< orphan*/  cookie; } ;
struct dlm_lock {TYPE_2__ ml; TYPE_1__* lksb; int /*<<< orphan*/  lockres; } ;
struct TYPE_3__ {int /*<<< orphan*/  lvb; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DLM_LVB_LEN ; 
 int DLM_MAX_MIGRATABLE_LOCKS ; 
 scalar_t__ LKM_EXMODE ; 
 scalar_t__ LKM_PRMODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct dlm_lock *lock,
				 struct dlm_migratable_lockres *mres, int queue)
{
	struct dlm_migratable_lock *ml;
	int lock_num = mres->num_locks;

	ml = &(mres->ml[lock_num]);
	ml->cookie = lock->ml.cookie;
	ml->type = lock->ml.type;
	ml->convert_type = lock->ml.convert_type;
	ml->highest_blocked = lock->ml.highest_blocked;
	ml->list = queue;
	if (lock->lksb) {
		ml->flags = lock->lksb->flags;
		/* send our current lvb */
		if (ml->type == LKM_EXMODE ||
		    ml->type == LKM_PRMODE) {
			/* if it is already set, this had better be a PR
			 * and it has to match */
			if (!FUNC1(mres->lvb) &&
			    (ml->type == LKM_EXMODE ||
			     FUNC3(mres->lvb, lock->lksb->lvb, DLM_LVB_LEN))) {
				FUNC5(ML_ERROR, "mismatched lvbs!\n");
				FUNC2(lock->lockres);
				FUNC0();
			}
			FUNC4(mres->lvb, lock->lksb->lvb, DLM_LVB_LEN);
		}
	}
	ml->node = lock->ml.node;
	mres->num_locks++;
	/* we reached the max, send this network message */
	if (mres->num_locks == DLM_MAX_MIGRATABLE_LOCKS)
		return 1;
	return 0;
}