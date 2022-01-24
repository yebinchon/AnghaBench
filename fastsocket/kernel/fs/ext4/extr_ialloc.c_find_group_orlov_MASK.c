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
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct orlov_stats {unsigned int free_inodes; int used_dirs; int free_blocks; } ;
struct inode {int dummy; } ;
struct ext4_sb_info {int s_log_groups_per_flex; int /*<<< orphan*/  s_hash_seed; int /*<<< orphan*/  s_dirs_counter; int /*<<< orphan*/  s_freeblocks_counter; int /*<<< orphan*/  s_freeinodes_counter; } ;
struct ext4_group_desc {int dummy; } ;
struct dx_hash_info {int hash; int /*<<< orphan*/  seed; int /*<<< orphan*/  hash_version; } ;
typedef  int /*<<< orphan*/  grp ;
typedef  int ext4_grpblk_t ;
typedef  int ext4_group_t ;
typedef  int ext4_fsblk_t ;
struct TYPE_4__ {int i_block_group; int i_last_alloc_group; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DX_HASH_HALF_MD4 ; 
 int FUNC0 (struct super_block*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_INODE_TOPDIR ; 
 struct ext4_sb_info* FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (struct ext4_sb_info*) ; 
 unsigned int FUNC7 (struct super_block*,struct ext4_group_desc*) ; 
 struct ext4_group_desc* FUNC8 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct super_block*) ; 
 scalar_t__ FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dx_hash_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,int,int,struct orlov_stats*) ; 
 int /*<<< orphan*/  FUNC13 (int*,int) ; 
 void* FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct super_block *sb, struct inode *parent,
			    ext4_group_t *group, int mode,
			    const struct qstr *qstr)
{
	ext4_group_t parent_group = FUNC1(parent)->i_block_group;
	struct ext4_sb_info *sbi = FUNC3(sb);
	ext4_group_t real_ngroups = FUNC9(sb);
	int inodes_per_group = FUNC2(sb);
	unsigned int freei, avefreei;
	ext4_fsblk_t freeb, avefreeb;
	unsigned int ndirs;
	int max_dirs, min_inodes;
	ext4_grpblk_t min_blocks;
	ext4_group_t i, grp, g, ngroups;
	struct ext4_group_desc *desc;
	struct orlov_stats stats;
	int flex_size = FUNC6(sbi);
	struct dx_hash_info hinfo;

	ngroups = real_ngroups;
	if (flex_size > 1) {
		ngroups = (real_ngroups + flex_size - 1) >>
			sbi->s_log_groups_per_flex;
		parent_group >>= sbi->s_log_groups_per_flex;
	}

	freei = FUNC14(&sbi->s_freeinodes_counter);
	avefreei = freei / ngroups;
	freeb = FUNC14(&sbi->s_freeblocks_counter);
	avefreeb = freeb;
	FUNC5(avefreeb, ngroups);
	ndirs = FUNC14(&sbi->s_dirs_counter);

	if (FUNC4(mode) &&
	    ((parent == sb->s_root->d_inode) ||
	     (FUNC10(parent, EXT4_INODE_TOPDIR)))) {
		int best_ndir = inodes_per_group;
		int ret = -1;

		if (qstr) {
			hinfo.hash_version = DX_HASH_HALF_MD4;
			hinfo.seed = sbi->s_hash_seed;
			FUNC11(qstr->name, qstr->len, &hinfo);
			grp = hinfo.hash;
		} else
			FUNC13(&grp, sizeof(grp));
		parent_group = (unsigned)grp % ngroups;
		for (i = 0; i < ngroups; i++) {
			g = (parent_group + i) % ngroups;
			FUNC12(sb, g, flex_size, &stats);
			if (!stats.free_inodes)
				continue;
			if (stats.used_dirs >= best_ndir)
				continue;
			if (stats.free_inodes < avefreei)
				continue;
			if (stats.free_blocks < avefreeb)
				continue;
			grp = g;
			ret = 0;
			best_ndir = stats.used_dirs;
		}
		if (ret)
			goto fallback;
	found_flex_bg:
		if (flex_size == 1) {
			*group = grp;
			return 0;
		}

		/*
		 * We pack inodes at the beginning of the flexgroup's
		 * inode tables.  Block allocation decisions will do
		 * something similar, although regular files will
		 * start at 2nd block group of the flexgroup.  See
		 * ext4_ext_find_goal() and ext4_find_near().
		 */
		grp *= flex_size;
		for (i = 0; i < flex_size; i++) {
			if (grp+i >= real_ngroups)
				break;
			desc = FUNC8(sb, grp+i, NULL);
			if (desc && FUNC7(sb, desc)) {
				*group = grp+i;
				return 0;
			}
		}
		goto fallback;
	}

	max_dirs = ndirs / ngroups + inodes_per_group / 16;
	min_inodes = avefreei - inodes_per_group*flex_size / 4;
	if (min_inodes < 1)
		min_inodes = 1;
	min_blocks = avefreeb - FUNC0(sb)*flex_size / 4;

	/*
	 * Start looking in the flex group where we last allocated an
	 * inode for this parent directory
	 */
	if (FUNC1(parent)->i_last_alloc_group != ~0) {
		parent_group = FUNC1(parent)->i_last_alloc_group;
		if (flex_size > 1)
			parent_group >>= sbi->s_log_groups_per_flex;
	}

	for (i = 0; i < ngroups; i++) {
		grp = (parent_group + i) % ngroups;
		FUNC12(sb, grp, flex_size, &stats);
		if (stats.used_dirs >= max_dirs)
			continue;
		if (stats.free_inodes < min_inodes)
			continue;
		if (stats.free_blocks < min_blocks)
			continue;
		goto found_flex_bg;
	}

fallback:
	ngroups = real_ngroups;
	avefreei = freei / ngroups;
fallback_retry:
	parent_group = FUNC1(parent)->i_block_group;
	for (i = 0; i < ngroups; i++) {
		grp = (parent_group + i) % ngroups;
		desc = FUNC8(sb, grp, NULL);
		if (desc && FUNC7(sb, desc) &&
		    FUNC7(sb, desc) >= avefreei) {
			*group = grp;
			return 0;
		}
	}

	if (avefreei) {
		/*
		 * The free-inodes counter is approximate, and for really small
		 * filesystems the above test can fail to find any blockgroups
		 */
		avefreei = 0;
		goto fallback_retry;
	}

	return -1;
}