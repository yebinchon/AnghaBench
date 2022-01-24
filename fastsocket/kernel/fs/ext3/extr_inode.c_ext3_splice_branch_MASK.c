#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct inode {struct timespec i_ctime; } ;
struct ext3_inode_info {int /*<<< orphan*/  i_datasync_tid; struct ext3_block_alloc_info* i_block_alloc_info; } ;
struct ext3_block_alloc_info {long last_alloc_logical_block; scalar_t__ last_alloc_physical_block; } ;
struct TYPE_12__ {TYPE_1__* h_transaction; } ;
typedef  TYPE_2__ handle_t ;
typedef  scalar_t__ ext3_fsblk_t ;
struct TYPE_13__ {int /*<<< orphan*/  key; scalar_t__ bh; int /*<<< orphan*/ * p; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_tid; } ;
typedef  TYPE_3__ Indirect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 struct timespec CURRENT_TIME_SEC ; 
 struct ext3_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct inode*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 int FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct timespec*,struct timespec*) ; 

__attribute__((used)) static int FUNC12(handle_t *handle, struct inode *inode,
			long block, Indirect *where, int num, int blks)
{
	int i;
	int err = 0;
	struct ext3_block_alloc_info *block_i;
	ext3_fsblk_t current_block;
	struct ext3_inode_info *ei = FUNC1(inode);
	struct timespec now;

	block_i = ei->i_block_alloc_info;
	/*
	 * If we're splicing into a [td]indirect block (as opposed to the
	 * inode) then we need to get write access to the [td]indirect block
	 * before the splice.
	 */
	if (where->bh) {
		FUNC0(where->bh, "get_write_access");
		err = FUNC7(handle, where->bh);
		if (err)
			goto err_out;
	}
	/* That's it */

	*where->p = where->key;

	/*
	 * Update the host buffer_head or inode to point to more just allocated
	 * direct blocks blocks
	 */
	if (num == 0 && blks > 1) {
		current_block = FUNC10(where->key) + 1;
		for (i = 1; i < blks; i++)
			*(where->p + i ) = FUNC3(current_block++);
	}

	/*
	 * update the most recently allocated logical & physical block
	 * in i_block_alloc_info, to assist find the proper goal block for next
	 * allocation
	 */
	if (block_i) {
		block_i->last_alloc_logical_block = block + blks - 1;
		block_i->last_alloc_physical_block =
				FUNC10(where[num].key) + blks - 1;
	}

	/* We are done with atomic stuff, now do the rest of housekeeping */
	now = CURRENT_TIME_SEC;
	if (!FUNC11(&inode->i_ctime, &now) || !where->bh) {
		inode->i_ctime = now;
		FUNC8(handle, inode);
	}
	/* ext3_mark_inode_dirty already updated i_sync_tid */
	FUNC2(&ei->i_datasync_tid, handle->h_transaction->t_tid);

	/* had we spliced it onto indirect block? */
	if (where->bh) {
		/*
		 * If we spliced it onto an indirect block, we haven't
		 * altered the inode.  Note however that if it is being spliced
		 * onto an indirect block at the very end of the file (the
		 * file is growing) then we *will* alter the inode to reflect
		 * the new i_size.  But that is not done here - it is done in
		 * generic_commit_write->__mark_inode_dirty->ext3_dirty_inode.
		 */
		FUNC9(5, "splicing indirect only\n");
		FUNC0(where->bh, "call ext3_journal_dirty_metadata");
		err = FUNC5(handle, where->bh);
		if (err)
			goto err_out;
	} else {
		/*
		 * OK, we spliced it into the inode itself on a direct block.
		 * Inode was dirtied above.
		 */
		FUNC9(5, "splicing direct\n");
	}
	return err;

err_out:
	for (i = 1; i <= num; i++) {
		FUNC0(where[i].bh, "call journal_forget");
		FUNC6(handle, where[i].bh);
		FUNC4(handle,inode,FUNC10(where[i-1].key),1);
	}
	FUNC4(handle, inode, FUNC10(where[num].key), blks);

	return err;
}