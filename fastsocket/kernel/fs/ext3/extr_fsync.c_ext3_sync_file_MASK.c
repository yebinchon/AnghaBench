#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct ext3_inode_info {int /*<<< orphan*/  i_sync_tid; int /*<<< orphan*/  i_datasync_tid; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_6__ {int /*<<< orphan*/ * s_journal; } ;
struct TYPE_5__ {int s_flags; int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER ; 
 struct ext3_inode_info* FUNC0 (struct inode*) ; 
 TYPE_3__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct file*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 

int FUNC13(struct file * file, struct dentry *dentry, int datasync)
{
	struct inode *inode = dentry->d_inode;
	struct ext3_inode_info *ei = FUNC0(inode);
	journal_t *journal = FUNC1(inode->i_sb)->s_journal;
	int ret = 0;
	tid_t commit_tid;

	FUNC2(FUNC6() == NULL);

	FUNC11(file, datasync);

	if (inode->i_sb->s_flags & MS_RDONLY)
		return 0;


	/*
	 * data=writeback,ordered:
	 *  The caller's filemap_fdatawrite()/wait will sync the data.
	 *  Metadata is in the journal, we wait for a proper transaction
	 *  to commit here.
	 *
	 * data=journal:
	 *  filemap_fdatawrite won't do anything (the buffers are clean).
	 *  ext3_force_commit will write the file data into the journal and
	 *  will wait on that.
	 *  filemap_fdatawait() will encounter a ton of newly-dirtied pages
	 *  (they were dirtied by commit).  But that's OK - the blocks are
	 *  safe in-journal, which is all fsync() needs to ensure.
	 */
	if (FUNC7(inode)) {
		ret = FUNC5(inode->i_sb);
		goto out;
	}

	if (datasync)
		commit_tid = FUNC3(&ei->i_datasync_tid);
	else
		commit_tid = FUNC3(&ei->i_sync_tid);

	if (FUNC8(journal, commit_tid)) {
		FUNC9(journal, commit_tid);
		goto out;
	}

	/*
	 * In case we didn't commit a transaction, we have to flush
	 * disk caches manually so that data really is on persistent
	 * storage
	 */
	if (FUNC10(inode->i_sb, BARRIER))
		FUNC4(inode->i_sb->s_bdev, NULL);
out:
	FUNC12(inode, ret);
	return ret;
}