#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ocfs2_super {int s_mount_opt; int /*<<< orphan*/  cconn; } ;
struct ocfs2_mask_waiter {int mw_mask; } ;
struct TYPE_5__ {int /*<<< orphan*/ * key; } ;
struct ocfs2_lock_res {int l_flags; int l_level; scalar_t__ l_action; int l_requested; TYPE_2__ l_lockdep_map; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lksb; TYPE_1__* l_ops; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_LKF_CONVERT ; 
 int DLM_LKF_NOQUEUE ; 
 int DLM_LKF_VALBLK ; 
 int DLM_LOCK_IV ; 
 int DLM_LOCK_NL ; 
 int DLM_LOCK_PR ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int LOCK_TYPE_USES_LVB ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ OCFS2_AST_ATTACH ; 
 scalar_t__ OCFS2_AST_CONVERT ; 
 scalar_t__ OCFS2_AST_INVALID ; 
 int OCFS2_LOCK_ATTACHED ; 
 int OCFS2_LOCK_BLOCKED ; 
 int OCFS2_LOCK_BUSY ; 
 int OCFS2_LOCK_FREEING ; 
 scalar_t__ OCFS2_LOCK_ID_MAX_LEN ; 
 int OCFS2_LOCK_NONBLOCK ; 
 int OCFS2_META_LOCK_NOQUEUE ; 
 int OCFS2_MOUNT_NOINTR ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_lock_res*,unsigned int,struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*,int) ; 
 scalar_t__ FUNC4 (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*) ; 
 unsigned int FUNC5 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_mask_waiter*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_lock_res*,int,struct ocfs2_mask_waiter*,int) ; 
 int FUNC18 (struct ocfs2_mask_waiter*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int,int,unsigned long) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC24(struct ocfs2_super *osb,
				struct ocfs2_lock_res *lockres,
				int level,
				u32 lkm_flags,
				int arg_flags,
				int l_subclass,
				unsigned long caller_ip)
{
	struct ocfs2_mask_waiter mw;
	int wait, catch_signals = !(osb->s_mount_opt & OCFS2_MOUNT_NOINTR);
	int ret = 0; /* gcc doesn't realize wait = 1 guarantees ret is set */
	unsigned long flags;
	unsigned int gen;
	int noqueue_attempted = 0;

	FUNC8();

	FUNC13(&mw);

	if (lockres->l_ops->flags & LOCK_TYPE_USES_LVB)
		lkm_flags |= DLM_LKF_VALBLK;

again:
	wait = 0;

	if (catch_signals && FUNC21(current)) {
		ret = -ERESTARTSYS;
		goto out;
	}

	FUNC22(&lockres->l_lock, flags);

	FUNC7(lockres->l_flags & OCFS2_LOCK_FREEING,
			"Cluster lock called on freeing lockres %s! flags "
			"0x%lx\n", lockres->l_name, lockres->l_flags);

	/* We only compare against the currently granted level
	 * here. If the lock is blocked waiting on a downconvert,
	 * we'll get caught below. */
	if (lockres->l_flags & OCFS2_LOCK_BUSY &&
	    level > lockres->l_level) {
		/* is someone sitting in dlm_lock? If so, wait on
		 * them. */
		FUNC1(lockres, &mw, OCFS2_LOCK_BUSY, 0);
		wait = 1;
		goto unlock;
	}

	if (lockres->l_flags & OCFS2_LOCK_BLOCKED &&
	    !FUNC15(lockres, level)) {
		/* is the lock is currently blocked on behalf of
		 * another node */
		FUNC1(lockres, &mw, OCFS2_LOCK_BLOCKED, 0);
		wait = 1;
		goto unlock;
	}

	if (level > lockres->l_level) {
		if (noqueue_attempted > 0) {
			ret = -EAGAIN;
			goto unlock;
		}
		if (lkm_flags & DLM_LKF_NOQUEUE)
			noqueue_attempted = 1;

		if (lockres->l_action != OCFS2_AST_INVALID)
			FUNC6(ML_ERROR, "lockres %s has action %u pending\n",
			     lockres->l_name, lockres->l_action);

		if (!(lockres->l_flags & OCFS2_LOCK_ATTACHED)) {
			lockres->l_action = OCFS2_AST_ATTACH;
			lkm_flags &= ~DLM_LKF_CONVERT;
		} else {
			lockres->l_action = OCFS2_AST_CONVERT;
			lkm_flags |= DLM_LKF_CONVERT;
		}

		lockres->l_requested = level;
		FUNC3(lockres, OCFS2_LOCK_BUSY);
		gen = FUNC5(lockres);
		FUNC23(&lockres->l_lock, flags);

		FUNC0(level == DLM_LOCK_IV);
		FUNC0(level == DLM_LOCK_NL);

		FUNC6(0, "lock %s, convert from %d to level = %d\n",
		     lockres->l_name, lockres->l_level, level);

		/* call dlm_lock to upgrade lock now */
		ret = FUNC11(osb->cconn,
				     level,
				     &lockres->l_lksb,
				     lkm_flags,
				     lockres->l_name,
				     OCFS2_LOCK_ID_MAX_LEN - 1,
				     lockres);
		FUNC2(lockres, gen, osb);
		if (ret) {
			if (!(lkm_flags & DLM_LKF_NOQUEUE) ||
			    (ret != -EAGAIN)) {
				FUNC14("ocfs2_dlm_lock",
						    ret, lockres);
			}
			FUNC16(lockres, 1);
			goto out;
		}

		FUNC6(0, "lock %s, successful return from ocfs2_dlm_lock\n",
		     lockres->l_name);

		/* At this point we've gone inside the dlm and need to
		 * complete our work regardless. */
		catch_signals = 0;

		/* wait for busy to clear and carry on */
		goto again;
	}

	/* Ok, if we get here then we're good to go. */
	FUNC12(lockres, level);

	ret = 0;
unlock:
	FUNC23(&lockres->l_lock, flags);
out:
	/*
	 * This is helping work around a lock inversion between the page lock
	 * and dlm locks.  One path holds the page lock while calling aops
	 * which block acquiring dlm locks.  The voting thread holds dlm
	 * locks while acquiring page locks while down converting data locks.
	 * This block is helping an aop path notice the inversion and back
	 * off to unlock its page lock before trying the dlm lock again.
	 */
	if (wait && arg_flags & OCFS2_LOCK_NONBLOCK &&
	    mw.mw_mask & (OCFS2_LOCK_BUSY|OCFS2_LOCK_BLOCKED)) {
		wait = 0;
		if (FUNC4(lockres, &mw))
			ret = -EAGAIN;
		else
			goto again;
	}
	if (wait) {
		ret = FUNC18(&mw);
		if (ret == 0)
			goto again;
		FUNC9(ret);
	}
	FUNC17(lockres, level, &mw, ret);

#ifdef CONFIG_DEBUG_LOCK_ALLOC
	if (!ret && lockres->l_lockdep_map.key != NULL) {
		if (level == DLM_LOCK_PR)
			rwsem_acquire_read(&lockres->l_lockdep_map, l_subclass,
				!!(arg_flags & OCFS2_META_LOCK_NOQUEUE),
				caller_ip);
		else
			rwsem_acquire(&lockres->l_lockdep_map, l_subclass,
				!!(arg_flags & OCFS2_META_LOCK_NOQUEUE),
				caller_ip);
	}
#endif
	FUNC10(ret);
	return ret;
}