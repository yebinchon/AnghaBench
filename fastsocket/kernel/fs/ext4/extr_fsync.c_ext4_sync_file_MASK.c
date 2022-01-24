#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct inode {TYPE_4__* i_sb; } ;
struct file {int dummy; } ;
struct ext4_inode_info {int /*<<< orphan*/  i_sync_tid; int /*<<< orphan*/  i_datasync_tid; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_7__ {int j_flags; } ;
typedef  TYPE_1__ journal_t ;
struct TYPE_9__ {TYPE_1__* s_journal; } ;
struct TYPE_8__ {int s_flags; int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 TYPE_5__* FUNC1 (TYPE_4__*) ; 
 int JBD2_BARRIER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct file*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct file*,struct dentry*,int) ; 

int FUNC12(struct file *file, struct dentry *dentry, int datasync)
{
	struct inode *inode = dentry->d_inode;
	struct ext4_inode_info *ei = FUNC0(inode);
	journal_t *journal = FUNC1(inode->i_sb)->s_journal;
	int ret;
	tid_t commit_tid;
	bool needs_barrier = false;

	FUNC2(FUNC5() == NULL);

	FUNC11(file, dentry, datasync);

	if (inode->i_sb->s_flags & MS_RDONLY)
		return 0;

	ret = FUNC7(inode);
	if (ret < 0)
		return ret;

	if (!journal)
		return FUNC10(file, dentry, datasync);

	/*
	 * data=writeback,ordered:
	 *  The caller's filemap_fdatawrite()/wait will sync the data.
	 *  Metadata is in the journal, we wait for proper transaction to
	 *  commit here.
	 *
	 * data=journal:
	 *  filemap_fdatawrite won't do anything (the buffers are clean).
	 *  ext4_force_commit will write the file data into the journal and
	 *  will wait on that.
	 *  filemap_fdatawait() will encounter a ton of newly-dirtied pages
	 *  (they were dirtied by commit).  But that's OK - the blocks are
	 *  safe in-journal, which is all fsync() needs to ensure.
	 */
	if (FUNC6(inode))
		return FUNC4(inode->i_sb);

	commit_tid = datasync ? ei->i_datasync_tid : ei->i_sync_tid;
	if (journal->j_flags & JBD2_BARRIER &&
	    !FUNC9(journal, commit_tid))
		needs_barrier = true;
	ret = FUNC8(journal, commit_tid);
	if (needs_barrier)
		FUNC3(inode->i_sb->s_bdev, NULL);
	return ret;
}