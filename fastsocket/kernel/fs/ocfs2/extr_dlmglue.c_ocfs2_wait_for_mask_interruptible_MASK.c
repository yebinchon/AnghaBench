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
struct ocfs2_mask_waiter {int mw_status; int /*<<< orphan*/  mw_complete; } ;
struct ocfs2_lock_res {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ocfs2_mask_waiter *mw,
					     struct ocfs2_lock_res *lockres)
{
	int ret;

	ret = FUNC2(&mw->mw_complete);
	if (ret)
		FUNC1(lockres, mw);
	else
		ret = mw->mw_status;
	/* Re-arm the completion in case we want to wait on it again */
	FUNC0(mw->mw_complete);
	return ret;
}