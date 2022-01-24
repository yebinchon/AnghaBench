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
struct super_block {int s_blocksize; } ;
struct ext4_sb_info {int s_desc_per_block; scalar_t__ s_itb_per_group; TYPE_1__* s_es; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_first_data_block; int /*<<< orphan*/  s_reserved_gdt_blocks; int /*<<< orphan*/  s_first_meta_bg; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_FEATURE_INCOMPAT_FLEX_BG ; 
 int /*<<< orphan*/  EXT4_FEATURE_INCOMPAT_META_BG ; 
 scalar_t__ FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (struct super_block*,int) ; 
 scalar_t__ FUNC6 (struct super_block*,int) ; 
 scalar_t__ FUNC7 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC8 (struct super_block*,scalar_t__,int) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_sb_info*,int,struct ext4_group_desc*) ; 
 scalar_t__ FUNC15 (struct super_block*,int) ; 
 int FUNC16 (struct super_block*,int,struct ext4_group_desc*) ; 
 scalar_t__ FUNC17 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC18 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,int) ; 

unsigned FUNC25(struct super_block *sb, struct buffer_head *bh,
		 ext4_group_t block_group, struct ext4_group_desc *gdp)
{
	int bit, bit_max;
	ext4_group_t ngroups = FUNC13(sb);
	unsigned free_blocks, group_blocks;
	struct ext4_sb_info *sbi = FUNC2(sb);

	if (bh) {
		FUNC3(bh, FUNC4(bh));

		/* If checksum is bad mark all blocks used to prevent allocation
		 * essentially implementing a per-group read-only flag. */
		if (!FUNC14(sbi, block_group, gdp)) {
			FUNC10(sb, "Checksum bad for group %u",
					block_group);
			FUNC11(sb, gdp, 0);
			FUNC12(sb, gdp, 0);
			FUNC19(sb, gdp, 0);
			FUNC24(bh->b_data, 0xff, sb->s_blocksize);
			return 0;
		}
		FUNC24(bh->b_data, 0, sb->s_blocksize);
	}

	/* Check for superblock and gdt backups in this group */
	bit_max = FUNC5(sb, block_group);

	if (!FUNC1(sb, EXT4_FEATURE_INCOMPAT_META_BG) ||
	    block_group < FUNC22(sbi->s_es->s_first_meta_bg) *
			  sbi->s_desc_per_block) {
		if (bit_max) {
			bit_max += FUNC6(sb, block_group);
			bit_max +=
				FUNC21(sbi->s_es->s_reserved_gdt_blocks);
		}
	} else { /* For META_BG_BLOCK_GROUPS */
		bit_max += FUNC6(sb, block_group);
	}

	if (block_group == ngroups - 1) {
		/*
		 * Even though mke2fs always initialize first and last group
		 * if some other tool enabled the EXT4_BG_BLOCK_UNINIT we need
		 * to make sure we calculate the right free blocks
		 */
		group_blocks = FUNC9(sbi->s_es) -
			FUNC22(sbi->s_es->s_first_data_block) -
			(FUNC0(sb) * (ngroups - 1));
	} else {
		group_blocks = FUNC0(sb);
	}

	free_blocks = group_blocks - bit_max;

	if (bh) {
		ext4_fsblk_t start, tmp;
		int flex_bg = 0;

		for (bit = 0; bit < bit_max; bit++)
			FUNC20(bit, bh->b_data);

		start = FUNC15(sb, block_group);

		if (FUNC1(sb,
					      EXT4_FEATURE_INCOMPAT_FLEX_BG))
			flex_bg = 1;

		/* Set bits for block and inode bitmaps, and inode table */
		tmp = FUNC7(sb, gdp);
		if (!flex_bg || FUNC8(sb, tmp, block_group))
			FUNC20(tmp - start, bh->b_data);

		tmp = FUNC17(sb, gdp);
		if (!flex_bg || FUNC8(sb, tmp, block_group))
			FUNC20(tmp - start, bh->b_data);

		tmp = FUNC18(sb, gdp);
		for (; tmp < FUNC18(sb, gdp) +
				sbi->s_itb_per_group; tmp++) {
			if (!flex_bg ||
				FUNC8(sb, tmp, block_group))
				FUNC20(tmp - start, bh->b_data);
		}
		/*
		 * Also if the number of blocks within the group is
		 * less than the blocksize * 8 ( which is the size
		 * of bitmap ), set rest of the block bitmap to 1
		 */
		FUNC23(group_blocks, sb->s_blocksize * 8, bh->b_data);
	}
	return free_blocks - FUNC16(sb, block_group, gdp);
}