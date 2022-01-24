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
struct ocfs2_inode_info {scalar_t__ ip_blkno; int /*<<< orphan*/  ip_flags; } ;
struct ocfs2_dinode {int i_flags; int /*<<< orphan*/  i_orphaned_slot; scalar_t__ i_dtime; int /*<<< orphan*/  i_blkno; } ;
struct inode {int /*<<< orphan*/  i_nlink; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EEXIST ; 
 int /*<<< orphan*/  ML_ERROR ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_ORPHANED_FL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,int) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
				  struct buffer_head *di_bh,
				  int *wipe)
{
	int status = 0;
	struct ocfs2_inode_info *oi = FUNC0(inode);
	struct ocfs2_dinode *di;

	*wipe = 0;

	/* While we were waiting for the cluster lock in
	 * ocfs2_delete_inode, another node might have asked to delete
	 * the inode. Recheck our flags to catch this. */
	if (!FUNC7(inode)) {
		FUNC5(0, "Skipping delete of %llu because flags changed\n",
		     (unsigned long long)oi->ip_blkno);
		goto bail;
	}

	/* Now that we have an up to date inode, we can double check
	 * the link count. */
	if (inode->i_nlink) {
		FUNC5(0, "Skipping delete of %llu because nlink = %u\n",
		     (unsigned long long)oi->ip_blkno, inode->i_nlink);
		goto bail;
	}

	/* Do some basic inode verification... */
	di = (struct ocfs2_dinode *) di_bh->b_data;
	if (!(di->i_flags & FUNC1(OCFS2_ORPHANED_FL))) {
		/* for lack of a better error? */
		status = -EEXIST;
		FUNC5(ML_ERROR,
		     "Inode %llu (on-disk %llu) not orphaned! "
		     "Disk flags  0x%x, inode flags 0x%x\n",
		     (unsigned long long)oi->ip_blkno,
		     (unsigned long long)FUNC4(di->i_blkno),
		     FUNC3(di->i_flags), oi->ip_flags);
		goto bail;
	}

	/* has someone already deleted us?! baaad... */
	if (di->i_dtime) {
		status = -EEXIST;
		FUNC6(status);
		goto bail;
	}

	/*
	 * This is how ocfs2 determines whether an inode is still live
	 * within the cluster. Every node takes a shared read lock on
	 * the inode open lock in ocfs2_read_locked_inode(). When we
	 * get to ->delete_inode(), each node tries to convert it's
	 * lock to an exclusive. Trylocks are serialized by the inode
	 * meta data lock. If the upconvert suceeds, we know the inode
	 * is no longer live and can be deleted.
	 *
	 * Though we call this with the meta data lock held, the
	 * trylock keeps us from ABBA deadlock.
	 */
	status = FUNC8(inode, 1);
	if (status == -EAGAIN) {
		status = 0;
		FUNC5(0, "Skipping delete of %llu because it is in use on "
		     "other nodes\n", (unsigned long long)oi->ip_blkno);
		goto bail;
	}
	if (status < 0) {
		FUNC6(status);
		goto bail;
	}

	*wipe = 1;
	FUNC5(0, "Inode %llu is ok to wipe from orphan dir %u\n",
	     (unsigned long long)oi->ip_blkno,
	     FUNC2(di->i_orphaned_slot));

bail:
	return status;
}