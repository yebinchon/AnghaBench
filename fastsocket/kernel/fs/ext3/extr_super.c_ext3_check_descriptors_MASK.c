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
struct ext3_sb_info {int s_groups_count; int s_itb_per_group; TYPE_1__* s_es; } ;
struct ext3_group_desc {int /*<<< orphan*/  bg_inode_table; int /*<<< orphan*/  bg_inode_bitmap; int /*<<< orphan*/  bg_block_bitmap; } ;
typedef  int ext3_fsblk_t ;
struct TYPE_2__ {void* s_free_inodes_count; void* s_free_blocks_count; int /*<<< orphan*/  s_blocks_count; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 struct ext3_sb_info* FUNC1 (struct super_block*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,char*,int,unsigned long) ; 
 struct ext3_group_desc* FUNC7 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct super_block*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb)
{
	struct ext3_sb_info *sbi = FUNC1(sb);
	int i;

	FUNC5 ("Checking group descriptors");

	for (i = 0; i < sbi->s_groups_count; i++) {
		struct ext3_group_desc *gdp = FUNC7(sb, i, NULL);
		ext3_fsblk_t first_block = FUNC8(sb, i);
		ext3_fsblk_t last_block;

		if (i == sbi->s_groups_count - 1)
			last_block = FUNC9(sbi->s_es->s_blocks_count) - 1;
		else
			last_block = first_block +
				(FUNC0(sb) - 1);

		if (FUNC9(gdp->bg_block_bitmap) < first_block ||
		    FUNC9(gdp->bg_block_bitmap) > last_block)
		{
			FUNC6 (sb, "ext3_check_descriptors",
				    "Block bitmap for group %d"
				    " not in group (block %lu)!",
				    i, (unsigned long)
					FUNC9(gdp->bg_block_bitmap));
			return 0;
		}
		if (FUNC9(gdp->bg_inode_bitmap) < first_block ||
		    FUNC9(gdp->bg_inode_bitmap) > last_block)
		{
			FUNC6 (sb, "ext3_check_descriptors",
				    "Inode bitmap for group %d"
				    " not in group (block %lu)!",
				    i, (unsigned long)
					FUNC9(gdp->bg_inode_bitmap));
			return 0;
		}
		if (FUNC9(gdp->bg_inode_table) < first_block ||
		    FUNC9(gdp->bg_inode_table) + sbi->s_itb_per_group - 1 >
		    last_block)
		{
			FUNC6 (sb, "ext3_check_descriptors",
				    "Inode table for group %d"
				    " not in group (block %lu)!",
				    i, (unsigned long)
					FUNC9(gdp->bg_inode_table));
			return 0;
		}
	}

	sbi->s_es->s_free_blocks_count=FUNC2(FUNC3(sb));
	sbi->s_es->s_free_inodes_count=FUNC2(FUNC4(sb));
	return 1;
}