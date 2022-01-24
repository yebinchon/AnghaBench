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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int /*<<< orphan*/  cconn; } ;
struct ocfs2_lock_res {int l_flags; int l_requested; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lksb; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_action; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_AST_ATTACH ; 
 int OCFS2_LOCK_ATTACHED ; 
 int OCFS2_LOCK_BUSY ; 
 scalar_t__ OCFS2_LOCK_ID_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_lock_res*,unsigned int,struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*,int) ; 
 unsigned int FUNC2 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct ocfs2_super *osb,
			     struct ocfs2_lock_res *lockres,
			     int level,
			     u32 dlm_flags)
{
	int ret = 0;
	unsigned long flags;
	unsigned int gen;

	FUNC4();

	FUNC3(0, "lock %s, level = %d, flags = %u\n", lockres->l_name, level,
	     dlm_flags);

	FUNC9(&lockres->l_lock, flags);
	if ((lockres->l_flags & OCFS2_LOCK_ATTACHED) ||
	    (lockres->l_flags & OCFS2_LOCK_BUSY)) {
		FUNC10(&lockres->l_lock, flags);
		goto bail;
	}

	lockres->l_action = OCFS2_AST_ATTACH;
	lockres->l_requested = level;
	FUNC1(lockres, OCFS2_LOCK_BUSY);
	gen = FUNC2(lockres);
	FUNC10(&lockres->l_lock, flags);

	ret = FUNC6(osb->cconn,
			     level,
			     &lockres->l_lksb,
			     dlm_flags,
			     lockres->l_name,
			     OCFS2_LOCK_ID_MAX_LEN - 1,
			     lockres);
	FUNC0(lockres, gen, osb);
	if (ret) {
		FUNC7("ocfs2_dlm_lock", ret, lockres);
		FUNC8(lockres, 1);
	}

	FUNC3(0, "lock %s, return from ocfs2_dlm_lock\n", lockres->l_name);

bail:
	FUNC5(ret);
	return ret;
}