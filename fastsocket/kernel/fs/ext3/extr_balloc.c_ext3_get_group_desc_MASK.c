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
struct ext3_sb_info {unsigned int s_groups_count; struct buffer_head** s_group_desc; } ;
struct ext3_group_desc {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 unsigned int FUNC1 (struct super_block*) ; 
 struct ext3_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,char*,unsigned int,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 

struct ext3_group_desc * FUNC5(struct super_block * sb,
					     unsigned int block_group,
					     struct buffer_head ** bh)
{
	unsigned long group_desc;
	unsigned long offset;
	struct ext3_group_desc * desc;
	struct ext3_sb_info *sbi = FUNC2(sb);

	if (block_group >= sbi->s_groups_count) {
		FUNC3 (sb, "ext3_get_group_desc",
			    "block_group >= groups_count - "
			    "block_group = %d, groups_count = %lu",
			    block_group, sbi->s_groups_count);

		return NULL;
	}
	FUNC4();

	group_desc = block_group >> FUNC1(sb);
	offset = block_group & (FUNC0(sb) - 1);
	if (!sbi->s_group_desc[group_desc]) {
		FUNC3 (sb, "ext3_get_group_desc",
			    "Group descriptor not loaded - "
			    "block_group = %d, group_desc = %lu, desc = %lu",
			     block_group, group_desc, offset);
		return NULL;
	}

	desc = (struct ext3_group_desc *) sbi->s_group_desc[group_desc]->b_data;
	if (bh)
		*bh = sbi->s_group_desc[group_desc];
	return desc + offset;
}