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
struct super_block {int s_flags; } ;
struct ext4_sb_info {int s_groups_count; TYPE_1__* s_es; int /*<<< orphan*/  s_itb_per_group; } ;
struct ext4_group_desc {int bg_flags; int /*<<< orphan*/  bg_checksum; } ;
typedef  int ext4_group_t ;
typedef  int ext4_fsblk_t ;
struct TYPE_3__ {int /*<<< orphan*/  s_free_inodes_count; int /*<<< orphan*/  s_first_data_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_BG_INODE_ZEROED ; 
 int FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_FEATURE_INCOMPAT_FLEX_BG ; 
 scalar_t__ FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int MS_RDONLY ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,struct ext4_group_desc*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct ext4_group_desc* FUNC11 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ext4_sb_info*,int,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ext4_sb_info*,int,struct ext4_group_desc*) ; 
 int FUNC14 (struct super_block*,struct ext4_group_desc*) ; 
 int FUNC15 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*,int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct super_block *sb,
				  ext4_group_t *first_not_zeroed)
{
	struct ext4_sb_info *sbi = FUNC2(sb);
	ext4_fsblk_t first_block = FUNC20(sbi->s_es->s_first_data_block);
	ext4_fsblk_t last_block;
	ext4_fsblk_t block_bitmap;
	ext4_fsblk_t inode_bitmap;
	ext4_fsblk_t inode_table;
	int flexbg_flag = 0;
	ext4_group_t i, grp = sbi->s_groups_count;

	if (FUNC1(sb, EXT4_FEATURE_INCOMPAT_FLEX_BG))
		flexbg_flag = 1;

	FUNC9("Checking group descriptors");

	for (i = 0; i < sbi->s_groups_count; i++) {
		struct ext4_group_desc *gdp = FUNC11(sb, i, NULL);

		if (i == sbi->s_groups_count - 1 || flexbg_flag)
			last_block = FUNC6(sbi->s_es) - 1;
		else
			last_block = first_block +
				(FUNC0(sb) - 1);

		if ((grp == sbi->s_groups_count) &&
		   !(gdp->bg_flags & FUNC3(EXT4_BG_INODE_ZEROED)))
			grp = i;

		block_bitmap = FUNC5(sb, gdp);
		if (block_bitmap < first_block || block_bitmap > last_block) {
			FUNC17(sb, KERN_ERR, "ext4_check_descriptors: "
			       "Block bitmap for group %u not in group "
			       "(block %llu)!", i, block_bitmap);
			return 0;
		}
		inode_bitmap = FUNC14(sb, gdp);
		if (inode_bitmap < first_block || inode_bitmap > last_block) {
			FUNC17(sb, KERN_ERR, "ext4_check_descriptors: "
			       "Inode bitmap for group %u not in group "
			       "(block %llu)!", i, inode_bitmap);
			return 0;
		}
		inode_table = FUNC15(sb, gdp);
		if (inode_table < first_block ||
		    inode_table + sbi->s_itb_per_group - 1 > last_block) {
			FUNC17(sb, KERN_ERR, "ext4_check_descriptors: "
			       "Inode table for group %u not in group "
			       "(block %llu)!", i, inode_table);
			return 0;
		}
		FUNC16(sb, i);
		if (!FUNC13(sbi, i, gdp)) {
			FUNC17(sb, KERN_ERR, "ext4_check_descriptors: "
				 "Checksum for group %u failed (%u!=%u)",
				 i, FUNC19(FUNC12(sbi, i,
				     gdp)), FUNC19(gdp->bg_checksum));
			if (!(sb->s_flags & MS_RDONLY)) {
				FUNC18(sb, i);
				return 0;
			}
		}
		FUNC18(sb, i);
		if (!flexbg_flag)
			first_block += FUNC0(sb);
	}
	if (NULL != first_not_zeroed)
		*first_not_zeroed = grp;

	FUNC10(sbi->s_es, FUNC7(sb));
	sbi->s_es->s_free_inodes_count =FUNC4(FUNC8(sb));
	return 1;
}