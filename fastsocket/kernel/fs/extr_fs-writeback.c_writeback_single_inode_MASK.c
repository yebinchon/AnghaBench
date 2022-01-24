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
struct writeback_control {scalar_t__ sync_mode; scalar_t__ nr_to_write; } ;
struct inode {int i_state; int /*<<< orphan*/  i_list; int /*<<< orphan*/  i_count; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I_CLEAR ; 
 int I_DIRTY ; 
 unsigned int I_DIRTY_DATASYNC ; 
 int I_DIRTY_PAGES ; 
 unsigned int I_DIRTY_SYNC ; 
 int I_FREEING ; 
 int I_SYNC ; 
 int I_WILL_FREE ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ WB_SYNC_ALL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct address_space*,struct writeback_control*) ; 
 int FUNC4 (struct address_space*) ; 
 int /*<<< orphan*/  inode_in_use ; 
 int /*<<< orphan*/  inode_lock ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  inode_unused ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct inode*,struct writeback_control*) ; 

__attribute__((used)) static int
FUNC14(struct inode *inode, struct writeback_control *wbc)
{
	struct address_space *mapping = inode->i_mapping;
	unsigned dirty;
	int ret;

	if (!FUNC2(&inode->i_count))
		FUNC1(!(inode->i_state & (I_WILL_FREE|I_FREEING)));
	else
		FUNC1(inode->i_state & I_WILL_FREE);

	if (inode->i_state & I_SYNC) {
		/*
		 * If this inode is locked for writeback and we are not doing
		 * writeback-for-data-integrity, move it to b_more_io so that
		 * writeback can proceed with the other inodes on s_io.
		 *
		 * We'll have another go at writing back this inode when we
		 * completed a full scan of b_io.
		 */
		if (wbc->sync_mode != WB_SYNC_ALL) {
			FUNC10(inode);
			return 0;
		}

		/*
		 * It's a data-integrity sync.  We must wait.
		 */
		FUNC6(inode);
	}

	FUNC0(inode->i_state & I_SYNC);

	/* Set I_SYNC, reset I_DIRTY */
	dirty = inode->i_state & I_DIRTY;
	inode->i_state |= I_SYNC;
	inode->i_state &= ~I_DIRTY;

	FUNC12(&inode_lock);

	ret = FUNC3(mapping, wbc);

	/*
	 * Make sure to wait on the data before writing out the metadata.
	 * This is important for filesystems that modify metadata on data
	 * I/O completion.
	 */
	if (wbc->sync_mode == WB_SYNC_ALL) {
		int err = FUNC4(mapping);
		if (ret == 0)
			ret = err;
	}

	/* Don't write the inode if only I_DIRTY_PAGES was set */
	if (dirty & (I_DIRTY_SYNC | I_DIRTY_DATASYNC)) {
		int err = FUNC13(inode, wbc);
		if (ret == 0)
			ret = err;
	}

	FUNC11(&inode_lock);
	inode->i_state &= ~I_SYNC;
	if (!(inode->i_state & (I_FREEING | I_CLEAR))) {
		if (FUNC8(mapping, PAGECACHE_TAG_DIRTY)) {
			/*
			 * We didn't write back all the pages.  nfs_writepages()
			 * sometimes bales out without doing anything.
			 */
			inode->i_state |= I_DIRTY_PAGES;
			if (wbc->nr_to_write <= 0) {
				/*
				 * slice used up: queue for next turn
				 */
				FUNC10(inode);
			} else {
				/*
				 * Writeback blocked by something other than
				 * congestion. Delay the inode for some time to
				 * avoid spinning on the CPU (100% iowait)
				 * retrying writeback of the dirty page/inode
				 * that cannot be performed immediately. 
				 */
				FUNC9(inode);
			}
		} else if (inode->i_state & I_DIRTY) {
			/*
			 * Filesystems can dirty the inode during writeback
			 * operations, such as delayed allocation during
			 * submission or metadata updates after data IO
			 * completion.
			 */
			FUNC9(inode);
		} else if (FUNC2(&inode->i_count)) {
			/*
			 * The inode is clean, inuse
			 */
			FUNC7(&inode->i_list, &inode_in_use);
		} else {
			/*
			 * The inode is clean, unused
			 */
			FUNC7(&inode->i_list, &inode_unused);
		}
	}
	FUNC5(inode);
	return ret;
}