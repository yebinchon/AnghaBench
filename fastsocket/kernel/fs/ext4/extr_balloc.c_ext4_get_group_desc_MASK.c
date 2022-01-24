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
struct ext4_sb_info {struct buffer_head** s_group_desc; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int ext4_group_t ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*) ; 
 unsigned int FUNC2 (struct super_block*) ; 
 struct ext4_sb_info* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,int,unsigned int,...) ; 
 int FUNC5 (struct super_block*) ; 

struct ext4_group_desc * FUNC6(struct super_block *sb,
					     ext4_group_t block_group,
					     struct buffer_head **bh)
{
	unsigned int group_desc;
	unsigned int offset;
	ext4_group_t ngroups = FUNC5(sb);
	struct ext4_group_desc *desc;
	struct ext4_sb_info *sbi = FUNC3(sb);

	if (block_group >= ngroups) {
		FUNC4(sb, "block_group >= groups_count - block_group = %u,"
			   " groups_count = %u", block_group, ngroups);

		return NULL;
	}

	group_desc = block_group >> FUNC1(sb);
	offset = block_group & (FUNC0(sb) - 1);
	if (!sbi->s_group_desc[group_desc]) {
		FUNC4(sb, "Group descriptor not loaded - "
			   "block_group = %u, group_desc = %u, desc = %u",
			   block_group, group_desc, offset);
		return NULL;
	}

	desc = (struct ext4_group_desc *)(
		(__u8 *)sbi->s_group_desc[group_desc]->b_data +
		offset * FUNC2(sb));
	if (bh)
		*bh = sbi->s_group_desc[group_desc];
	return desc;
}