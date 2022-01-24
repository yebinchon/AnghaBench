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
struct TYPE_2__ {struct ocfs2_lock_res ip_open_lockres; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DLM_LKF_NOQUEUE ; 
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ocfs2_super*,struct ocfs2_lock_res*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ocfs2_super*) ; 

int FUNC8(struct inode *inode, int write)
{
	int status = 0, level;
	struct ocfs2_lock_res *lockres;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);

	FUNC0(!inode);

	FUNC4();

	FUNC3(0, "inode %llu try to take %s open lock\n",
	     (unsigned long long)FUNC1(inode)->ip_blkno,
	     write ? "EXMODE" : "PRMODE");

	if (FUNC7(osb))
		goto out;

	lockres = &FUNC1(inode)->ip_open_lockres;

	level = write ? DLM_LOCK_EX : DLM_LOCK_PR;

	/*
	 * The file system may already holding a PRMODE/EXMODE open lock.
	 * Since we pass DLM_LKF_NOQUEUE, the request won't block waiting on
	 * other nodes and the -EAGAIN will indicate to the caller that
	 * this inode is still in use.
	 */
	status = FUNC6(FUNC2(inode->i_sb), lockres,
				    level, DLM_LKF_NOQUEUE, 0);

out:
	FUNC5(status);
	return status;
}