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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext3_fsblk_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,scalar_t__,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(handle_t *handle, struct inode *inode,
			   struct buffer_head *this_bh,
			   __le32 *first, __le32 *last)
{
	ext3_fsblk_t block_to_free = 0;    /* Starting block # of a run */
	unsigned long count = 0;	    /* Number of blocks in the run */
	__le32 *block_to_free_p = NULL;	    /* Pointer into inode/ind
					       corresponding to
					       block_to_free */
	ext3_fsblk_t nr;		    /* Current block # */
	__le32 *p;			    /* Pointer into inode/ind
					       for current block */
	int err;

	if (this_bh) {				/* For indirect block */
		FUNC0(this_bh, "get_write_access");
		err = FUNC5(handle, this_bh);
		/* Important: if we can't update the indirect pointers
		 * to the blocks, we can't free them. */
		if (err)
			return;
	}

	for (p = first; p < last; p++) {
		nr = FUNC6(*p);
		if (nr) {
			/* accumulate blocks to free if they're contiguous */
			if (count == 0) {
				block_to_free = nr;
				block_to_free_p = p;
				count = 1;
			} else if (nr == block_to_free + count) {
				count++;
			} else {
				FUNC2(handle, inode, this_bh,
						  block_to_free,
						  count, block_to_free_p, p);
				block_to_free = nr;
				block_to_free_p = p;
				count = 1;
			}
		}
	}

	if (count > 0)
		FUNC2(handle, inode, this_bh, block_to_free,
				  count, block_to_free_p, p);

	if (this_bh) {
		FUNC0(this_bh, "call ext3_journal_dirty_metadata");

		/*
		 * The buffer head should have an attached journal head at this
		 * point. However, if the data is corrupted and an indirect
		 * block pointed to itself, it would have been detached when
		 * the block was cleared. Check for this instead of OOPSing.
		 */
		if (FUNC1(this_bh))
			FUNC4(handle, this_bh);
		else
			FUNC3(inode->i_sb, "ext3_free_data",
				   "circular indirect block detected, "
				   "inode=%lu, block=%llu",
				   inode->i_ino,
				   (unsigned long long)this_bh->b_blocknr);
	}
}