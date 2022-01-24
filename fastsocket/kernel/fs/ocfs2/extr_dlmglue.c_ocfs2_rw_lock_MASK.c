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
struct TYPE_2__ {struct ocfs2_lock_res ip_rw_lockres; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct ocfs2_super*,struct ocfs2_lock_res*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ocfs2_super*) ; 

int FUNC9(struct inode *inode, int write)
{
	int status, level;
	struct ocfs2_lock_res *lockres;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);

	FUNC0(!inode);

	FUNC4();

	FUNC3(0, "inode %llu take %s RW lock\n",
	     (unsigned long long)FUNC1(inode)->ip_blkno,
	     write ? "EXMODE" : "PRMODE");

	if (FUNC8(osb)) {
		FUNC6(0);
		return 0;
	}

	lockres = &FUNC1(inode)->ip_rw_lockres;

	level = write ? DLM_LOCK_EX : DLM_LOCK_PR;

	status = FUNC7(FUNC2(inode->i_sb), lockres, level, 0,
				    0);
	if (status < 0)
		FUNC5(status);

	FUNC6(status);
	return status;
}