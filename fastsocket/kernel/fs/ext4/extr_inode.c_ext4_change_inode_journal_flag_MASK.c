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
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  journal_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  EXT4_INODE_JOURNAL_DATA ; 
 int /*<<< orphan*/ * FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct inode *inode, int val)
{
	journal_t *journal;
	handle_t *handle;
	int err;

	/*
	 * We have to be very careful here: changing a data block's
	 * journaling status dynamically is dangerous.  If we write a
	 * data block to the journal, change the status and then delete
	 * that block, we risk forgetting to revoke the old log record
	 * from the journal and so a subsequent replay can corrupt data.
	 * So, first we make sure that the journal is empty and that
	 * nobody is changing anything.
	 */

	journal = FUNC0(inode);
	if (!journal)
		return 0;
	if (FUNC11(journal))
		return -EROFS;

	FUNC13(journal);
	FUNC12(journal);

	/*
	 * OK, there are no updates running now, and all cached data is
	 * synced to disk.  We are now in a completely consistent state
	 * which doesn't have anything in the journal, and we know that
	 * no filesystem updates are running, so it is safe to modify
	 * the inode's in-core data-journaling state flag now.
	 */

	if (val)
		FUNC9(inode, EXT4_INODE_JOURNAL_DATA);
	else
		FUNC3(inode, EXT4_INODE_JOURNAL_DATA);
	FUNC8(inode);

	FUNC14(journal);

	/* Finally we can mark the inode as dirty. */

	handle = FUNC5(inode, 1);
	if (FUNC1(handle))
		return FUNC2(handle);

	err = FUNC7(handle, inode);
	FUNC4(handle);
	FUNC6(handle);
	FUNC10(inode->i_sb, err);

	return err;
}