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
struct ext4_sb_info {int dummy; } ;
struct ext4_inode_info {unsigned long i_reserved_meta_blocks; int /*<<< orphan*/  i_block_reservation_lock; int /*<<< orphan*/  i_reserved_data_blocks; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int EDQUOT ; 
 int ENOSPC ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 struct ext4_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ext4_sb_info*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 scalar_t__ FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct inode *inode, sector_t lblock)
{
	int retries = 0;
	struct ext4_sb_info *sbi = FUNC1(inode->i_sb);
	struct ext4_inode_info *ei = FUNC0(inode);
	unsigned long md_needed;

	/*
	 * recalculate the amount of metadata blocks to reserve
	 * in order to allocate nrblocks
	 * worse case is one extent per block
	 */
repeat:
	FUNC5(&ei->i_block_reservation_lock);
	md_needed = FUNC2(inode, lblock);
	FUNC6(&ei->i_block_reservation_lock);

	/*
	 * We will charge metadata quota at writeout time; this saves
	 * us from metadata over-estimation, though we may go over by
	 * a small amount in the end.  Here we just reserve for data.
	 */
	if (FUNC8(inode, 1))
		return -EDQUOT;

	/*
	 * We do still charge estimated metadata to the sb though;
	 * we cannot afford to run out of free blocks.
	 */
	if (FUNC3(sbi, md_needed + 1, 0)) {
		FUNC7(inode, 1);
		if (FUNC4(inode->i_sb, &retries)) {
			FUNC9();
			goto repeat;
		}
		return -ENOSPC;
	}
	FUNC5(&ei->i_block_reservation_lock);
	ei->i_reserved_data_blocks++;
	ei->i_reserved_meta_blocks += md_needed;
	FUNC6(&ei->i_block_reservation_lock);

	return 0;       /* success */
}