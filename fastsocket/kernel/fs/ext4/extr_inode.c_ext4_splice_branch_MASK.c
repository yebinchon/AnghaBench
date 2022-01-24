#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_3__ {int /*<<< orphan*/  key; scalar_t__ bh; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(handle_t *handle, struct inode *inode,
			      ext4_lblk_t block, Indirect *where, int num,
			      int blks)
{
	int i;
	int err = 0;
	ext4_fsblk_t current_block;

	/*
	 * If we're splicing into a [td]indirect block (as opposed to the
	 * inode) then we need to get write access to the [td]indirect block
	 * before the splice.
	 */
	if (where->bh) {
		FUNC0(where->bh, "get_write_access");
		err = FUNC5(handle, where->bh);
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
		current_block = FUNC8(where->key) + 1;
		for (i = 1; i < blks; i++)
			*(where->p + i) = FUNC1(current_block++);
	}

	/* We are done with atomic stuff, now do the rest of housekeeping */
	/* had we spliced it onto indirect block? */
	if (where->bh) {
		/*
		 * If we spliced it onto an indirect block, we haven't
		 * altered the inode.  Note however that if it is being spliced
		 * onto an indirect block at the very end of the file (the
		 * file is growing) then we *will* alter the inode to reflect
		 * the new i_size.  But that is not done here - it is done in
		 * generic_commit_write->__mark_inode_dirty->ext4_dirty_inode.
		 */
		FUNC7(5, "splicing indirect only\n");
		FUNC0(where->bh, "call ext4_handle_dirty_metadata");
		err = FUNC3(handle, inode, where->bh);
		if (err)
			goto err_out;
	} else {
		/*
		 * OK, we spliced it into the inode itself on a direct block.
		 */
		FUNC6(handle, inode);
		FUNC7(5, "splicing direct\n");
	}
	return err;

err_out:
	for (i = 1; i <= num; i++) {
		FUNC0(where[i].bh, "call jbd2_journal_forget");
		FUNC4(handle, where[i].bh);
		FUNC2(handle, inode,
					FUNC8(where[i-1].key), 1, 0);
	}
	FUNC2(handle, inode, FUNC8(where[num].key), blks, 0);

	return err;
}