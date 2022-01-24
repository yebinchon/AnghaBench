#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct inode {scalar_t__ i_blocks; scalar_t__ i_size; int /*<<< orphan*/  i_data; } ;
struct TYPE_9__ {int h_sync; } ;
typedef  TYPE_1__ handle_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_dtime; } ;

/* Variables and functions */
 TYPE_8__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 TYPE_1__* FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC14 (struct inode * inode)
{
	handle_t *handle;

	FUNC13(&inode->i_data, 0);

	if (FUNC10(inode))
		goto no_delete;

	FUNC12(inode);
	handle = FUNC11(inode);
	if (FUNC1(handle)) {
		/*
		 * If we're going to skip the normal cleanup, we still need to
		 * make sure that the in-core orphan linked list is properly
		 * cleaned up.
		 */
		FUNC7(NULL, inode);
		goto no_delete;
	}

	if (FUNC2(inode))
		handle->h_sync = 1;
	inode->i_size = 0;
	if (inode->i_blocks)
		FUNC8(inode);
	/*
	 * Kill off the orphan record which ext3_truncate created.
	 * AKPM: I think this can be inside the above `if'.
	 * Note that ext3_orphan_del() has to be able to cope with the
	 * deletion of a non-existent orphan - this is because we don't
	 * know if ext3_truncate() actually created an orphan record.
	 * (Well, we could do this if we need to, but heck - it works)
	 */
	FUNC7(handle, inode);
	FUNC0(inode)->i_dtime	= FUNC9();

	/*
	 * One subtle ordering requirement: if anything has gone wrong
	 * (transaction abort, IO errors, whatever), then we can still
	 * do these next steps (the fs will already have been marked as
	 * having errors), but we can't free the inode if the mark_dirty
	 * fails.
	 */
	if (FUNC6(handle, inode))
		/* If that failed, just do the required in-core inode clear. */
		FUNC3(inode);
	else
		FUNC4(handle, inode);
	FUNC5(handle);
	return;
no_delete:
	FUNC3(inode);	/* We must guarantee clearing of inode... */
}