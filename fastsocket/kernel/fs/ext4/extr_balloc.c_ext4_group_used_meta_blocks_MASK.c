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
struct super_block {int dummy; } ;
struct ext4_sb_info {int s_itb_per_group; } ;
struct ext4_group_desc {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_FEATURE_INCOMPAT_FLEX_BG ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ext4_sb_info* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC5 (struct super_block*,struct ext4_group_desc*) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb,
				       ext4_group_t block_group,
				       struct ext4_group_desc *gdp)
{
	ext4_fsblk_t tmp;
	struct ext4_sb_info *sbi = FUNC1(sb);
	/* block bitmap, inode bitmap, and inode table blocks */
	int used_blocks = sbi->s_itb_per_group + 2;

	if (FUNC0(sb, EXT4_FEATURE_INCOMPAT_FLEX_BG)) {
		if (!FUNC3(sb, FUNC2(sb, gdp),
					block_group))
			used_blocks--;

		if (!FUNC3(sb, FUNC4(sb, gdp),
					block_group))
			used_blocks--;

		tmp = FUNC5(sb, gdp);
		for (; tmp < FUNC5(sb, gdp) +
				sbi->s_itb_per_group; tmp++) {
			if (!FUNC3(sb, tmp, block_group))
				used_blocks -= 1;
		}
	}
	return used_blocks;
}