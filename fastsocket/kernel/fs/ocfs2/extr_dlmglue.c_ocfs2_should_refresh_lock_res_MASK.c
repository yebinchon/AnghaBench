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
struct ocfs2_lock_res {int l_flags; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int OCFS2_LOCK_NEEDS_REFRESH ; 
 int OCFS2_LOCK_REFRESHING ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_lock_res *lockres)
{
	unsigned long flags;
	int status = 0;

	FUNC1();

refresh_check:
	FUNC4(&lockres->l_lock, flags);
	if (!(lockres->l_flags & OCFS2_LOCK_NEEDS_REFRESH)) {
		FUNC5(&lockres->l_lock, flags);
		goto bail;
	}

	if (lockres->l_flags & OCFS2_LOCK_REFRESHING) {
		FUNC5(&lockres->l_lock, flags);

		FUNC3(lockres);
		goto refresh_check;
	}

	/* Ok, I'll be the one to refresh this lock. */
	FUNC0(lockres, OCFS2_LOCK_REFRESHING);
	FUNC5(&lockres->l_lock, flags);

	status = 1;
bail:
	FUNC2(status);
	return status;
}