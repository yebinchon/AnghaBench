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
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DLM_LKF_LOCAL ; 
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 int OCFS2_LOCK_ATTACHED ; 
 int /*<<< orphan*/  OCFS2_LOCK_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ocfs2_super*,struct ocfs2_lock_res*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ocfs2_super *osb,
				 struct ocfs2_lock_res *lockres,
				 int ex,
				 int local)
{
	int level =  ex ? DLM_LOCK_EX : DLM_LOCK_PR;
	unsigned long flags;
	u32 lkm_flags = local ? DLM_LKF_LOCAL : 0;

	FUNC3(&lockres->l_lock, flags);
	FUNC0(lockres->l_flags & OCFS2_LOCK_ATTACHED);
	FUNC1(lockres, OCFS2_LOCK_LOCAL);
	FUNC4(&lockres->l_lock, flags);

	return FUNC2(osb, lockres, level, lkm_flags);
}