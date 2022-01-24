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
struct ocfs2_lock_res {int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lksb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_CONVERT ; 
 int /*<<< orphan*/  DLM_LKF_VALBLK ; 
 scalar_t__ OCFS2_LOCK_ID_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_lock_res*,unsigned int,struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_lock_res*,int) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_super *osb,
				  struct ocfs2_lock_res *lockres,
				  int new_level,
				  int lvb,
				  unsigned int generation)
{
	int ret;
	u32 dlm_flags = DLM_LKF_CONVERT;

	FUNC1();

	if (lvb)
		dlm_flags |= DLM_LKF_VALBLK;

	ret = FUNC3(osb->cconn,
			     new_level,
			     &lockres->l_lksb,
			     dlm_flags,
			     lockres->l_name,
			     OCFS2_LOCK_ID_MAX_LEN - 1,
			     lockres);
	FUNC0(lockres, generation, osb);
	if (ret) {
		FUNC4("ocfs2_dlm_lock", ret, lockres);
		FUNC5(lockres, 1);
		goto bail;
	}

	ret = 0;
bail:
	FUNC2(ret);
	return ret;
}