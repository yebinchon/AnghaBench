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
struct ext4_sb_info {int /*<<< orphan*/  s_dirtyblocks_counter; } ;
struct ext4_inode_info {int i_reserved_data_blocks; int i_reserved_meta_blocks; int /*<<< orphan*/  i_block_reservation_lock; scalar_t__ i_da_metadata_calc_len; } ;

/* Variables and functions */
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 struct ext4_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 

__attribute__((used)) static void FUNC9(struct inode *inode, int to_free)
{
	struct ext4_sb_info *sbi = FUNC1(inode->i_sb);
	struct ext4_inode_info *ei = FUNC0(inode);

	if (!to_free)
		return;		/* Nothing to release, exit */

	FUNC5(&FUNC0(inode)->i_block_reservation_lock);

	if (FUNC7(to_free > ei->i_reserved_data_blocks)) {
		/*
		 * if there aren't enough reserved blocks, then the
		 * counter is messed up somewhere.  Since this
		 * function is called from invalidate page, it's
		 * harmless to return without any action.
		 */
		FUNC3(inode->i_sb, KERN_NOTICE, "ext4_da_release_space: "
			 "ino %lu, to_free %d with only %d reserved "
			 "data blocks\n", inode->i_ino, to_free,
			 ei->i_reserved_data_blocks);
		FUNC2(1);
		to_free = ei->i_reserved_data_blocks;
	}
	ei->i_reserved_data_blocks -= to_free;

	if (ei->i_reserved_data_blocks == 0) {
		/*
		 * We can release all of the reserved metadata blocks
		 * only when we have written all of the delayed
		 * allocation blocks.
		 */
		FUNC4(&sbi->s_dirtyblocks_counter,
				   ei->i_reserved_meta_blocks);
		ei->i_reserved_meta_blocks = 0;
		ei->i_da_metadata_calc_len = 0;
	}

	/* update fs dirty data blocks counter */
	FUNC4(&sbi->s_dirtyblocks_counter, to_free);

	FUNC6(&FUNC0(inode)->i_block_reservation_lock);

	FUNC8(inode, to_free);
}