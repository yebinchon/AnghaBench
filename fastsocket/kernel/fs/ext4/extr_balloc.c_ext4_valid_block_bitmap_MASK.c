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
struct super_block {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ ext4_grpblk_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {scalar_t__ s_itb_per_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_FEATURE_INCOMPAT_FLEX_BG ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,unsigned int,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct super_block*,unsigned int) ; 
 scalar_t__ FUNC6 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC7 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb,
					struct ext4_group_desc *desc,
					unsigned int block_group,
					struct buffer_head *bh)
{
	ext4_grpblk_t offset;
	ext4_grpblk_t next_zero_bit;
	ext4_fsblk_t bitmap_blk;
	ext4_fsblk_t group_first_block;

	if (FUNC0(sb, EXT4_FEATURE_INCOMPAT_FLEX_BG)) {
		/* with FLEX_BG, the inode/block bitmaps and itable
		 * blocks may not be in the group at all
		 * so the bitmap validation will be skipped for those groups
		 * or it has to also read the block group where the bitmaps
		 * are located to verify they are set.
		 */
		return 1;
	}
	group_first_block = FUNC5(sb, block_group);

	/* check whether block bitmap block number is set */
	bitmap_blk = FUNC2(sb, desc);
	offset = bitmap_blk - group_first_block;
	if (!FUNC8(offset, bh->b_data))
		/* bad block bitmap */
		goto err_out;

	/* check whether the inode bitmap block number is set */
	bitmap_blk = FUNC6(sb, desc);
	offset = bitmap_blk - group_first_block;
	if (!FUNC8(offset, bh->b_data))
		/* bad block bitmap */
		goto err_out;

	/* check whether the inode table block number is set */
	bitmap_blk = FUNC7(sb, desc);
	offset = bitmap_blk - group_first_block;
	next_zero_bit = FUNC4(bh->b_data,
				offset + FUNC1(sb)->s_itb_per_group,
				offset);
	if (next_zero_bit >= offset + FUNC1(sb)->s_itb_per_group)
		/* good bitmap for inode tables */
		return 1;

err_out:
	FUNC3(sb, "Invalid block bitmap - block_group = %d, block = %llu",
			block_group, bitmap_blk);
	return 0;
}