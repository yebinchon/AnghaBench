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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_2__ {int /*<<< orphan*/  ip_flags; int /*<<< orphan*/  ip_blkno; } ;

/* Variables and functions */
 int EDEADLK ; 
 int ENOENT ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_DELETED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct inode*,struct buffer_head*,int*) ; 
 int FUNC16 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC19(struct inode *inode)
{
	int wipe, status;
	sigset_t blocked, oldset;
	struct buffer_head *di_bh = NULL;

	FUNC6("(inode->i_ino = %lu)\n", inode->i_ino);

	/* When we fail in read_inode() we mark inode as bad. The second test
	 * catches the case when inode allocation fails before allocating
	 * a block for inode. */
	if (FUNC4(inode) || !FUNC0(inode)->ip_blkno) {
		FUNC5(0, "Skipping delete of bad inode\n");
		goto bail;
	}

	if (!FUNC10(inode)) {
		/* It's probably not necessary to truncate_inode_pages
		 * here but we do it for safety anyway (it will most
		 * likely be a no-op anyway) */
		FUNC9(inode, 0);
		goto bail;
	}

	/* We want to block signals in delete_inode as the lock and
	 * messaging paths may return us -ERESTARTSYS. Which would
	 * cause us to exit early, resulting in inodes being orphaned
	 * forever. */
	FUNC17(&blocked);
	status = FUNC18(SIG_BLOCK, &blocked, &oldset);
	if (status < 0) {
		FUNC7(status);
		FUNC9(inode, 1);
		goto bail;
	}

	/*
	 * Synchronize us against ocfs2_get_dentry. We take this in
	 * shared mode so that all nodes can still concurrently
	 * process deletes.
	 */
	status = FUNC13(FUNC1(inode->i_sb), 0);
	if (status < 0) {
		FUNC5(ML_ERROR, "getting nfs sync lock(PR) failed %d\n", status);
		FUNC9(inode, 0);
		goto bail_unblock;
	}
	/* Lock down the inode. This gives us an up to date view of
	 * it's metadata (for verification), and allows us to
	 * serialize delete_inode on multiple nodes.
	 *
	 * Even though we might be doing a truncate, we don't take the
	 * allocation lock here as it won't be needed - nobody will
	 * have the file open.
	 */
	status = FUNC11(inode, &di_bh, 1);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC7(status);
		FUNC9(inode, 0);
		goto bail_unlock_nfs_sync;
	}

	/* Query the cluster. This will be the final decision made
	 * before we go ahead and wipe the inode. */
	status = FUNC15(inode, di_bh, &wipe);
	if (!wipe || status < 0) {
		/* Error and remote inode busy both mean we won't be
		 * removing the inode, so they take almost the same
		 * path. */
		if (status < 0)
			FUNC7(status);

		/* Someone in the cluster has disallowed a wipe of
		 * this inode, or it was never completely
		 * orphaned. Write out the pages and exit now. */
		FUNC9(inode, 1);
		goto bail_unlock_inode;
	}

	FUNC9(inode, 0);

	status = FUNC16(inode, di_bh);
	if (status < 0) {
		if (status != -EDEADLK)
			FUNC7(status);
		goto bail_unlock_inode;
	}

	/*
	 * Mark the inode as successfully deleted.
	 *
	 * This is important for ocfs2_clear_inode() as it will check
	 * this flag and skip any checkpointing work
	 *
	 * ocfs2_stuff_meta_lvb() also uses this flag to invalidate
	 * the LVB for other nodes.
	 */
	FUNC0(inode)->ip_flags |= OCFS2_INODE_DELETED;

bail_unlock_inode:
	FUNC12(inode, 1);
	FUNC2(di_bh);

bail_unlock_nfs_sync:
	FUNC14(FUNC1(inode->i_sb), 0);

bail_unblock:
	status = FUNC18(SIG_SETMASK, &oldset, NULL);
	if (status < 0)
		FUNC7(status);
bail:
	FUNC3(inode);
	FUNC8();
}