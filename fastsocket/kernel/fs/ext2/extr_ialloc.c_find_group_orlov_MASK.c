#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_1__* s_root; } ;
struct inode {int dummy; } ;
struct ext2_super_block {int /*<<< orphan*/  s_blocks_count; } ;
struct ext2_sb_info {int s_groups_count; int* s_debts; int /*<<< orphan*/  s_dirs_counter; int /*<<< orphan*/  s_freeblocks_counter; int /*<<< orphan*/  s_freeinodes_counter; struct ext2_super_block* s_es; } ;
struct ext2_group_desc {int /*<<< orphan*/  bg_free_inodes_count; int /*<<< orphan*/  bg_free_blocks_count; int /*<<< orphan*/  bg_used_dirs_count; } ;
typedef  int /*<<< orphan*/  group ;
struct TYPE_4__ {int i_block_group; int i_flags; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_COST ; 
 int FUNC0 (struct super_block*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct super_block*) ; 
 struct ext2_sb_info* FUNC3 (struct super_block*) ; 
 int EXT2_TOPDIR_FL ; 
 int INODE_COST ; 
 struct ext2_group_desc* FUNC4 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb, struct inode *parent)
{
	int parent_group = FUNC1(parent)->i_block_group;
	struct ext2_sb_info *sbi = FUNC3(sb);
	struct ext2_super_block *es = sbi->s_es;
	int ngroups = sbi->s_groups_count;
	int inodes_per_group = FUNC2(sb);
	int freei;
	int avefreei;
	int free_blocks;
	int avefreeb;
	int blocks_per_dir;
	int ndirs;
	int max_debt, max_dirs, min_blocks, min_inodes;
	int group = -1, i;
	struct ext2_group_desc *desc;

	freei = FUNC9(&sbi->s_freeinodes_counter);
	avefreei = freei / ngroups;
	free_blocks = FUNC9(&sbi->s_freeblocks_counter);
	avefreeb = free_blocks / ngroups;
	ndirs = FUNC9(&sbi->s_dirs_counter);

	if ((parent == sb->s_root->d_inode) ||
	    (FUNC1(parent)->i_flags & EXT2_TOPDIR_FL)) {
		struct ext2_group_desc *best_desc = NULL;
		int best_ndir = inodes_per_group;
		int best_group = -1;

		FUNC5(&group, sizeof(group));
		parent_group = (unsigned)group % ngroups;
		for (i = 0; i < ngroups; i++) {
			group = (parent_group + i) % ngroups;
			desc = FUNC4 (sb, group, NULL);
			if (!desc || !desc->bg_free_inodes_count)
				continue;
			if (FUNC6(desc->bg_used_dirs_count) >= best_ndir)
				continue;
			if (FUNC6(desc->bg_free_inodes_count) < avefreei)
				continue;
			if (FUNC6(desc->bg_free_blocks_count) < avefreeb)
				continue;
			best_group = group;
			best_ndir = FUNC6(desc->bg_used_dirs_count);
			best_desc = desc;
		}
		if (best_group >= 0) {
			desc = best_desc;
			group = best_group;
			goto found;
		}
		goto fallback;
	}

	if (ndirs == 0)
		ndirs = 1;	/* percpu_counters are approximate... */

	blocks_per_dir = (FUNC7(es->s_blocks_count)-free_blocks) / ndirs;

	max_dirs = ndirs / ngroups + inodes_per_group / 16;
	min_inodes = avefreei - inodes_per_group / 4;
	min_blocks = avefreeb - FUNC0(sb) / 4;

	max_debt = FUNC0(sb) / FUNC8(blocks_per_dir, BLOCK_COST);
	if (max_debt * INODE_COST > inodes_per_group)
		max_debt = inodes_per_group / INODE_COST;
	if (max_debt > 255)
		max_debt = 255;
	if (max_debt == 0)
		max_debt = 1;

	for (i = 0; i < ngroups; i++) {
		group = (parent_group + i) % ngroups;
		desc = FUNC4 (sb, group, NULL);
		if (!desc || !desc->bg_free_inodes_count)
			continue;
		if (sbi->s_debts[group] >= max_debt)
			continue;
		if (FUNC6(desc->bg_used_dirs_count) >= max_dirs)
			continue;
		if (FUNC6(desc->bg_free_inodes_count) < min_inodes)
			continue;
		if (FUNC6(desc->bg_free_blocks_count) < min_blocks)
			continue;
		goto found;
	}

fallback:
	for (i = 0; i < ngroups; i++) {
		group = (parent_group + i) % ngroups;
		desc = FUNC4 (sb, group, NULL);
		if (!desc || !desc->bg_free_inodes_count)
			continue;
		if (FUNC6(desc->bg_free_inodes_count) >= avefreei)
			goto found;
	}

	if (avefreei) {
		/*
		 * The free-inodes counter is approximate, and for really small
		 * filesystems the above test can fail to find any blockgroups
		 */
		avefreei = 0;
		goto fallback;
	}

	return -1;

found:
	return group;
}