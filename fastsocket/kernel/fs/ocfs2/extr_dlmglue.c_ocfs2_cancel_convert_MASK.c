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
struct ocfs2_super {int /*<<< orphan*/  cconn; } ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lksb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_CANCEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_super *osb,
				struct ocfs2_lock_res *lockres)
{
	int ret;

	FUNC1();
	FUNC0(0, "lock %s\n", lockres->l_name);

	ret = FUNC3(osb->cconn, &lockres->l_lksb,
			       DLM_LKF_CANCEL, lockres);
	if (ret) {
		FUNC4("ocfs2_dlm_unlock", ret, lockres);
		FUNC5(lockres, 0);
	}

	FUNC0(0, "lock %s return from ocfs2_dlm_unlock\n", lockres->l_name);

	FUNC2(ret);
	return ret;
}