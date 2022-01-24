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
struct ocfs2_lock_res {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; struct ocfs2_lock_res ip_rw_lockres; } ;

/* Variables and functions */
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long long,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_super*,struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*) ; 

void FUNC7(struct inode *inode, int write)
{
	int level = write ? DLM_LOCK_EX : DLM_LOCK_PR;
	struct ocfs2_lock_res *lockres = &FUNC0(inode)->ip_rw_lockres;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);

	FUNC3();

	FUNC2(0, "inode %llu drop %s RW lock\n",
	     (unsigned long long)FUNC0(inode)->ip_blkno,
	     write ? "EXMODE" : "PRMODE");

	if (!FUNC6(osb))
		FUNC5(FUNC1(inode->i_sb), lockres, level);

	FUNC4();
}