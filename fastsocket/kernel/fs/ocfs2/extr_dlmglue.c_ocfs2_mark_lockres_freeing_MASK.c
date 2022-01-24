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
struct ocfs2_mask_waiter {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_name; } ;

/* Variables and functions */
 int OCFS2_LOCK_FREEING ; 
 int OCFS2_LOCK_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_mask_waiter*) ; 
 int FUNC4 (struct ocfs2_mask_waiter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct ocfs2_lock_res *lockres)
{
	int status;
	struct ocfs2_mask_waiter mw;
	unsigned long flags;

	FUNC3(&mw);

	FUNC5(&lockres->l_lock, flags);
	lockres->l_flags |= OCFS2_LOCK_FREEING;
	while (lockres->l_flags & OCFS2_LOCK_QUEUED) {
		FUNC0(lockres, &mw, OCFS2_LOCK_QUEUED, 0);
		FUNC6(&lockres->l_lock, flags);

		FUNC1(0, "Waiting on lockres %s\n", lockres->l_name);

		status = FUNC4(&mw);
		if (status)
			FUNC2(status);

		FUNC5(&lockres->l_lock, flags);
	}
	FUNC6(&lockres->l_lock, flags);
}