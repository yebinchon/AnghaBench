#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_unblock_ctl {int requeue; int /*<<< orphan*/  unblock_action; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_flags; scalar_t__ l_blocking; scalar_t__ l_level; int /*<<< orphan*/  l_lock; TYPE_1__* l_ops; scalar_t__ l_ex_holders; scalar_t__ l_ro_holders; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  (* set_lvb ) (struct ocfs2_lock_res*) ;int /*<<< orphan*/  (* downconvert_worker ) (struct ocfs2_lock_res*,int) ;int /*<<< orphan*/  (* check_downconvert ) (struct ocfs2_lock_res*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DLM_LOCK_EX ; 
 scalar_t__ DLM_LOCK_PR ; 
 int LOCK_TYPE_REQUIRES_REFRESH ; 
 int LOCK_TYPE_USES_LVB ; 
 int OCFS2_LOCK_BLOCKED ; 
 int OCFS2_LOCK_BUSY ; 
 int OCFS2_LOCK_NEEDS_REFRESH ; 
 int OCFS2_LOCK_PENDING ; 
 int OCFS2_LOCK_REFRESHING ; 
 int /*<<< orphan*/  UNBLOCK_STOP_POST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ocfs2_super*,struct ocfs2_lock_res*) ; 
 int FUNC5 (struct ocfs2_super*,struct ocfs2_lock_res*,int,int,unsigned int) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (struct ocfs2_super*,struct ocfs2_lock_res*) ; 
 unsigned int FUNC8 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_lock_res*) ; 

__attribute__((used)) static int FUNC14(struct ocfs2_super *osb,
			      struct ocfs2_lock_res *lockres,
			      struct ocfs2_unblock_ctl *ctl)
{
	unsigned long flags;
	int blocking;
	int new_level;
	int ret = 0;
	int set_lvb = 0;
	unsigned int gen;

	FUNC1();

	FUNC9(&lockres->l_lock, flags);

	FUNC0(!(lockres->l_flags & OCFS2_LOCK_BLOCKED));

recheck:
	if (lockres->l_flags & OCFS2_LOCK_BUSY) {
		/* XXX
		 * This is a *big* race.  The OCFS2_LOCK_PENDING flag
		 * exists entirely for one reason - another thread has set
		 * OCFS2_LOCK_BUSY, but has *NOT* yet called dlm_lock().
		 *
		 * If we do ocfs2_cancel_convert() before the other thread
		 * calls dlm_lock(), our cancel will do nothing.  We will
		 * get no ast, and we will have no way of knowing the
		 * cancel failed.  Meanwhile, the other thread will call
		 * into dlm_lock() and wait...forever.
		 *
		 * Why forever?  Because another node has asked for the
		 * lock first; that's why we're here in unblock_lock().
		 *
		 * The solution is OCFS2_LOCK_PENDING.  When PENDING is
		 * set, we just requeue the unblock.  Only when the other
		 * thread has called dlm_lock() and cleared PENDING will
		 * we then cancel their request.
		 *
		 * All callers of dlm_lock() must set OCFS2_DLM_PENDING
		 * at the same time they set OCFS2_DLM_BUSY.  They must
		 * clear OCFS2_DLM_PENDING after dlm_lock() returns.
		 */
		if (lockres->l_flags & OCFS2_LOCK_PENDING)
			goto leave_requeue;

		ctl->requeue = 1;
		ret = FUNC7(osb, lockres);
		FUNC10(&lockres->l_lock, flags);
		if (ret) {
			ret = FUNC4(osb, lockres);
			if (ret < 0)
				FUNC2(ret);
		}
		goto leave;
	}

	/* if we're blocking an exclusive and we have *any* holders,
	 * then requeue. */
	if ((lockres->l_blocking == DLM_LOCK_EX)
	    && (lockres->l_ex_holders || lockres->l_ro_holders))
		goto leave_requeue;

	/* If it's a PR we're blocking, then only
	 * requeue if we've got any EX holders */
	if (lockres->l_blocking == DLM_LOCK_PR &&
	    lockres->l_ex_holders)
		goto leave_requeue;

	/*
	 * Can we get a lock in this state if the holder counts are
	 * zero? The meta data unblock code used to check this.
	 */
	if ((lockres->l_ops->flags & LOCK_TYPE_REQUIRES_REFRESH)
	    && (lockres->l_flags & OCFS2_LOCK_REFRESHING))
		goto leave_requeue;

	new_level = FUNC6(lockres->l_blocking);

	if (lockres->l_ops->check_downconvert
	    && !lockres->l_ops->check_downconvert(lockres, new_level))
		goto leave_requeue;

	/* If we get here, then we know that there are no more
	 * incompatible holders (and anyone asking for an incompatible
	 * lock is blocked). We can now downconvert the lock */
	if (!lockres->l_ops->downconvert_worker)
		goto downconvert;

	/* Some lockres types want to do a bit of work before
	 * downconverting a lock. Allow that here. The worker function
	 * may sleep, so we save off a copy of what we're blocking as
	 * it may change while we're not holding the spin lock. */
	blocking = lockres->l_blocking;
	FUNC10(&lockres->l_lock, flags);

	ctl->unblock_action = lockres->l_ops->downconvert_worker(lockres, blocking);

	if (ctl->unblock_action == UNBLOCK_STOP_POST)
		goto leave;

	FUNC9(&lockres->l_lock, flags);
	if (blocking != lockres->l_blocking) {
		/* If this changed underneath us, then we can't drop
		 * it just yet. */
		goto recheck;
	}

downconvert:
	ctl->requeue = 0;

	if (lockres->l_ops->flags & LOCK_TYPE_USES_LVB) {
		if (lockres->l_level == DLM_LOCK_EX)
			set_lvb = 1;

		/*
		 * We only set the lvb if the lock has been fully
		 * refreshed - otherwise we risk setting stale
		 * data. Otherwise, there's no need to actually clear
		 * out the lvb here as it's value is still valid.
		 */
		if (set_lvb && !(lockres->l_flags & OCFS2_LOCK_NEEDS_REFRESH))
			lockres->l_ops->set_lvb(lockres);
	}

	gen = FUNC8(lockres, new_level);
	FUNC10(&lockres->l_lock, flags);
	ret = FUNC5(osb, lockres, new_level, set_lvb,
				     gen);

leave:
	FUNC3(ret);
	return ret;

leave_requeue:
	FUNC10(&lockres->l_lock, flags);
	ctl->requeue = 1;

	FUNC3(0);
	return 0;
}