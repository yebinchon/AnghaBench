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
struct dlm_lockstatus {scalar_t__ status; } ;
struct user_lock_res {scalar_t__ l_requested; scalar_t__ l_level; int /*<<< orphan*/  l_event; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_flags; int /*<<< orphan*/  l_blocking; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_namelen; struct dlm_lockstatus l_lksb; } ;

/* Variables and functions */
 scalar_t__ DLM_NORMAL ; 
 scalar_t__ LKM_IVMODE ; 
 int /*<<< orphan*/  LKM_NLMODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  USER_LOCK_ATTACHED ; 
 int /*<<< orphan*/  USER_LOCK_BLOCKED ; 
 int /*<<< orphan*/  USER_LOCK_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *opaque)
{
	struct user_lock_res *lockres = opaque;
	struct dlm_lockstatus *lksb;

	FUNC0(0, "AST fired for lockres %.*s\n", lockres->l_namelen,
	     lockres->l_name);

	FUNC2(&lockres->l_lock);

	lksb = &(lockres->l_lksb);
	if (lksb->status != DLM_NORMAL) {
		FUNC0(ML_ERROR, "lksb status value of %u on lockres %.*s\n",
		     lksb->status, lockres->l_namelen, lockres->l_name);
		FUNC3(&lockres->l_lock);
		return;
	}

	FUNC1(lockres->l_requested == LKM_IVMODE,
			"Lockres %.*s, requested ivmode. flags 0x%x\n",
			lockres->l_namelen, lockres->l_name, lockres->l_flags);

	/* we're downconverting. */
	if (lockres->l_requested < lockres->l_level) {
		if (lockres->l_requested <=
		    FUNC4(lockres->l_blocking)) {
			lockres->l_blocking = LKM_NLMODE;
			lockres->l_flags &= ~USER_LOCK_BLOCKED;
		}
	}

	lockres->l_level = lockres->l_requested;
	lockres->l_requested = LKM_IVMODE;
	lockres->l_flags |= USER_LOCK_ATTACHED;
	lockres->l_flags &= ~USER_LOCK_BUSY;

	FUNC3(&lockres->l_lock);

	FUNC5(&lockres->l_event);
}