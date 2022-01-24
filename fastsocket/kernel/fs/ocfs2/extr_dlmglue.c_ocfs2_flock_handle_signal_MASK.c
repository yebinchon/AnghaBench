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
struct ocfs2_super {int dummy; } ;
struct ocfs2_mask_waiter {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int l_level; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_action; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int OCFS2_LOCK_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ocfs2_super*,struct ocfs2_lock_res*) ; 
 struct ocfs2_super* FUNC4 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_mask_waiter*) ; 
 int FUNC6 (struct ocfs2_super*,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_mask_waiter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct ocfs2_lock_res *lockres,
				     int level)
{
	int ret;
	struct ocfs2_super *osb = FUNC4(lockres);
	unsigned long flags;
	struct ocfs2_mask_waiter mw;

	FUNC5(&mw);

retry_cancel:
	FUNC8(&lockres->l_lock, flags);
	if (lockres->l_flags & OCFS2_LOCK_BUSY) {
		ret = FUNC6(osb, lockres);
		if (ret) {
			FUNC9(&lockres->l_lock, flags);
			ret = FUNC3(osb, lockres);
			if (ret < 0) {
				FUNC2(ret);
				goto out;
			}
			goto retry_cancel;
		}
		FUNC0(lockres, &mw, OCFS2_LOCK_BUSY, 0);
		FUNC9(&lockres->l_lock, flags);

		FUNC7(&mw);
		goto retry_cancel;
	}

	ret = -ERESTARTSYS;
	/*
	 * We may still have gotten the lock, in which case there's no
	 * point to restarting the syscall.
	 */
	if (lockres->l_level == level)
		ret = 0;

	FUNC1(0, "Cancel returning %d. flags: 0x%lx, level: %d, act: %d\n", ret,
	     lockres->l_flags, lockres->l_level, lockres->l_action);

	FUNC9(&lockres->l_lock, flags);

out:
	return ret;
}