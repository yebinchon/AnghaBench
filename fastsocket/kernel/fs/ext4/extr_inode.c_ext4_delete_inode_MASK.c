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
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ i_blocks; scalar_t__ i_size; int /*<<< orphan*/  i_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_dtime; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC25(struct inode *inode)
{
	handle_t *handle;
	int err;

	if (FUNC16(inode))
		FUNC6(inode, 0);
	FUNC24(&inode->i_data, 0);

	if (FUNC21(inode))
		goto no_delete;

	/*
	 * Protect us against freezing - iput() caller didn't have to have any
	 * protection against it
	 */
	FUNC23(inode->i_sb);
	handle = FUNC12(inode, FUNC4(inode)+3);
	if (FUNC1(handle)) {
		FUNC17(inode->i_sb, FUNC3(handle));
		/*
		 * If we're going to skip the normal cleanup, we still need to
		 * make sure that the in-core orphan linked list is properly
		 * cleaned up.
		 */
		FUNC15(NULL, inode);
		FUNC22(inode->i_sb);
		goto no_delete;
	}

	if (FUNC2(inode))
		FUNC9(handle);
	inode->i_size = 0;
	err = FUNC14(handle, inode);
	if (err) {
		FUNC19(inode->i_sb,
			     "couldn't mark inode dirty (err %d)", err);
		goto stop_handle;
	}
	if (inode->i_blocks)
		FUNC18(inode);

	/*
	 * ext4_ext_truncate() doesn't reserve any slop when it
	 * restarts journal transactions; therefore there may not be
	 * enough credits left in the handle to remove the inode from
	 * the orphan list and set the dtime field.
	 */
	if (!FUNC8(handle, 3)) {
		err = FUNC10(handle, 3);
		if (err > 0)
			err = FUNC11(handle, 3);
		if (err != 0) {
			FUNC19(inode->i_sb,
				     "couldn't extend journal (err %d)", err);
		stop_handle:
			FUNC13(handle);
			FUNC22(inode->i_sb);
			goto no_delete;
		}
	}

	/*
	 * Kill off the orphan record which ext4_truncate created.
	 * AKPM: I think this can be inside the above `if'.
	 * Note that ext4_orphan_del() has to be able to cope with the
	 * deletion of a non-existent orphan - this is because we don't
	 * know if ext4_truncate() actually created an orphan record.
	 * (Well, we could do this if we need to, but heck - it works)
	 */
	FUNC15(handle, inode);
	FUNC0(inode)->i_dtime	= FUNC20();

	/*
	 * One subtle ordering requirement: if anything has gone wrong
	 * (transaction abort, IO errors, whatever), then we can still
	 * do these next steps (the fs will already have been marked as
	 * having errors), but we can't free the inode if the mark_dirty
	 * fails.
	 */
	if (FUNC14(handle, inode))
		/* If that failed, just do the required in-core inode clear. */
		FUNC5(inode);
	else
		FUNC7(handle, inode);
	FUNC13(handle);
	FUNC22(inode->i_sb);
	return;
no_delete:
	FUNC5(inode);	/* We must guarantee clearing of inode... */
}