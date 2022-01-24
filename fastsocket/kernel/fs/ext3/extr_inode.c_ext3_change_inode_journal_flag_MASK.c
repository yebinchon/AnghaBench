#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_8__ {int h_sync; } ;
typedef  TYPE_1__ handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int EROFS ; 
 TYPE_7__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  EXT3_JOURNAL_DATA_FL ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct inode *inode, int val)
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

	journal = FUNC1(inode);
	if (FUNC9(journal))
		return -EROFS;

	FUNC11(journal);
	FUNC10(journal);

	/*
	 * OK, there are no updates running now, and all cached data is
	 * synced to disk.  We are now in a completely consistent state
	 * which doesn't have anything in the journal, and we know that
	 * no filesystem updates are running, so it is safe to modify
	 * the inode's in-core data-journaling state flag now.
	 */

	if (val)
		FUNC0(inode)->i_flags |= EXT3_JOURNAL_DATA_FL;
	else
		FUNC0(inode)->i_flags &= ~EXT3_JOURNAL_DATA_FL;
	FUNC7(inode);

	FUNC12(journal);

	/* Finally we can mark the inode as dirty. */

	handle = FUNC4(inode, 1);
	if (FUNC2(handle))
		return FUNC3(handle);

	err = FUNC6(handle, inode);
	handle->h_sync = 1;
	FUNC5(handle);
	FUNC8(inode->i_sb, err);

	return err;
}