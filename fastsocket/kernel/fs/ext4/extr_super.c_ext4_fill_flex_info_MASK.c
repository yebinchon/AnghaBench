#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct flex_groups {int dummy; } ;
struct ext4_sb_info {int s_log_groups_per_flex; unsigned int s_groups_count; TYPE_2__* s_flex_groups; TYPE_1__* s_es; } ;
struct ext4_group_desc {int dummy; } ;
typedef  int ext4_group_t ;
struct TYPE_6__ {int /*<<< orphan*/  used_dirs; int /*<<< orphan*/  free_blocks; int /*<<< orphan*/  free_inodes; } ;
struct TYPE_5__ {int s_log_groups_per_flex; int /*<<< orphan*/  s_reserved_gdt_blocks; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 struct ext4_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ext4_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct ext4_group_desc*) ; 
 struct ext4_group_desc* FUNC6 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct ext4_group_desc*) ; 
 TYPE_2__* FUNC9 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_2__* FUNC12 (size_t) ; 

__attribute__((used)) static int FUNC13(struct super_block *sb)
{
	struct ext4_sb_info *sbi = FUNC1(sb);
	struct ext4_group_desc *gdp = NULL;
	ext4_group_t flex_group_count;
	ext4_group_t flex_group;
	unsigned int groups_per_flex = 0;
	size_t size;
	int i;

	sbi->s_log_groups_per_flex = sbi->s_es->s_log_groups_per_flex;
	if (sbi->s_log_groups_per_flex < 1 || sbi->s_log_groups_per_flex > 31) {
		sbi->s_log_groups_per_flex = 0;
		return 1;
	}
	groups_per_flex = 1U << sbi->s_log_groups_per_flex;

	/* We allocate both existing and potentially added groups */
	flex_group_count = ((sbi->s_groups_count + groups_per_flex - 1) +
			((FUNC10(sbi->s_es->s_reserved_gdt_blocks) + 1) <<
			      FUNC0(sb))) / groups_per_flex;
	size = flex_group_count * sizeof(struct flex_groups);
	sbi->s_flex_groups = FUNC9(size, GFP_KERNEL);
	if (sbi->s_flex_groups == NULL) {
		sbi->s_flex_groups = FUNC12(size);
		if (sbi->s_flex_groups)
			FUNC11(sbi->s_flex_groups, 0, size);
	}
	if (sbi->s_flex_groups == NULL) {
		FUNC7(sb, KERN_ERR, "not enough memory for "
				"%u flex groups", flex_group_count);
		goto failed;
	}

	for (i = 0; i < sbi->s_groups_count; i++) {
		gdp = FUNC6(sb, i, NULL);

		flex_group = FUNC3(sbi, i);
		FUNC2(FUNC5(sb, gdp),
			   &sbi->s_flex_groups[flex_group].free_inodes);
		FUNC2(FUNC4(sb, gdp),
			   &sbi->s_flex_groups[flex_group].free_blocks);
		FUNC2(FUNC8(sb, gdp),
			   &sbi->s_flex_groups[flex_group].used_dirs);
	}

	return 1;
failed:
	return 0;
}