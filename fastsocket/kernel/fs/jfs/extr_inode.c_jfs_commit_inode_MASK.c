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
typedef  int /*<<< orphan*/  tid_t ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_Dirty ; 
 int /*<<< orphan*/  COMMIT_INODE ; 
 int /*<<< orphan*/  COMMIT_SYNC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct inode *inode, int wait)
{
	int rc = 0;
	tid_t tid;
	static int noisy = 5;

	FUNC3("In jfs_commit_inode, inode = 0x%p", inode);

	/*
	 * Don't commit if inode has been committed since last being
	 * marked dirty, or if it has been deleted.
	 */
	if (inode->i_nlink == 0 || !FUNC7(COMMIT_Dirty, inode))
		return 0;

	if (FUNC1(inode)) {
		/* kernel allows writes to devices on read-only
		 * partitions and may think inode is dirty
		 */
		if (!FUNC6(inode->i_mode) && noisy) {
			FUNC2("jfs_commit_inode(0x%p) called on "
				   "read-only volume", inode);
			FUNC2("Is remount racy?");
			noisy--;
		}
		return 0;
	}

	tid = FUNC8(inode->i_sb, COMMIT_INODE);
	FUNC4(&FUNC0(inode)->commit_mutex);

	/*
	 * Retest inode state after taking commit_mutex
	 */
	if (inode->i_nlink && FUNC7(COMMIT_Dirty, inode))
		rc = FUNC9(tid, 1, &inode, wait ? COMMIT_SYNC : 0);

	FUNC10(tid);
	FUNC5(&FUNC0(inode)->commit_mutex);
	return rc;
}