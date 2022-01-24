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
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {scalar_t__ l_ex_holders; scalar_t__ l_ro_holders; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; struct ocfs2_lock_res ip_open_lockres; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_EX ; 
 int /*<<< orphan*/  DLM_LOCK_PR ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*,struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ocfs2_super*) ; 

void FUNC7(struct inode *inode)
{
	struct ocfs2_lock_res *lockres = &FUNC0(inode)->ip_open_lockres;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);

	FUNC3();

	FUNC2(0, "inode %llu drop open lock\n",
	     (unsigned long long)FUNC0(inode)->ip_blkno);

	if (FUNC6(osb))
		goto out;

	if(lockres->l_ro_holders)
		FUNC5(FUNC1(inode->i_sb), lockres,
				     DLM_LOCK_PR);
	if(lockres->l_ex_holders)
		FUNC5(FUNC1(inode->i_sb), lockres,
				     DLM_LOCK_EX);

out:
	FUNC4();
}