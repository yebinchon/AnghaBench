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
 int /*<<< orphan*/  DLM_LOCK_PR ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct ocfs2_super*,struct ocfs2_lock_res*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ocfs2_super*) ; 

int FUNC9(struct inode *inode)
{
	int status = 0;
	struct ocfs2_lock_res *lockres;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);

	FUNC0(!inode);

	FUNC4();

	FUNC3(0, "inode %llu take PRMODE open lock\n",
	     (unsigned long long)FUNC1(inode)->ip_blkno);

	if (FUNC8(osb))
		goto out;

	lockres = &FUNC1(inode)->ip_open_lockres;

	status = FUNC7(FUNC2(inode->i_sb), lockres,
				    DLM_LOCK_PR, 0, 0);
	if (status < 0)
		FUNC5(status);

out:
	FUNC6(status);
	return status;
}