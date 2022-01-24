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
struct super_block {int s_flags; int s_dirt; } ;
struct inode {int i_mode; scalar_t__ i_nlink; int /*<<< orphan*/  i_flags; scalar_t__ i_ino; scalar_t__ i_generation; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; scalar_t__ i_blocks; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; struct super_block* i_sb; } ;
struct ext2_super_block {int /*<<< orphan*/  s_inodes_count; } ;
struct ext2_sb_info {int s_groups_count; int* s_debts; int /*<<< orphan*/  s_next_gen_lock; int /*<<< orphan*/  s_next_generation; int /*<<< orphan*/  s_dirs_counter; int /*<<< orphan*/  s_freeinodes_counter; struct ext2_super_block* s_es; } ;
struct ext2_inode_info {int i_flags; int i_block_group; int /*<<< orphan*/  i_state; scalar_t__ i_dir_start_lookup; int /*<<< orphan*/ * i_block_alloc_info; scalar_t__ i_dtime; scalar_t__ i_dir_acl; scalar_t__ i_file_acl; scalar_t__ i_frag_size; scalar_t__ i_frag_no; scalar_t__ i_faddr; int /*<<< orphan*/  i_data; } ;
struct ext2_group_desc {int /*<<< orphan*/  bg_used_dirs_count; int /*<<< orphan*/  bg_free_inodes_count; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EDQUOT ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct inode* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 int EXT2_FL_INHERITED ; 
 struct ext2_inode_info* FUNC2 (struct inode*) ; 
 int FUNC3 (struct super_block*) ; 
 struct ext2_sb_info* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  EXT2_STATE_NEW ; 
 int /*<<< orphan*/  GRPID ; 
 int MS_SYNCHRONOUS ; 
 int /*<<< orphan*/  OLDALLOC ; 
 scalar_t__ FUNC5 (int) ; 
 int S_ISGID ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,char*,char*,int,unsigned long) ; 
 scalar_t__ FUNC11 (unsigned long*,int,scalar_t__) ; 
 struct ext2_group_desc* FUNC12 (struct super_block*,int,struct buffer_head**) ; 
 int FUNC13 (struct inode*,struct inode*) ; 
 int FUNC14 (struct inode*,struct inode*) ; 
 int FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int FUNC19 (struct super_block*,struct inode*) ; 
 int FUNC20 (struct super_block*,struct inode*) ; 
 int FUNC21 (struct super_block*,struct inode*) ; 
 scalar_t__ FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC30 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC33 (struct super_block*,int) ; 
 int /*<<< orphan*/ * FUNC34 (struct ext2_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (struct buffer_head*) ; 
 scalar_t__ FUNC38 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct inode*) ; 
 scalar_t__ FUNC40 (struct inode*) ; 
 int /*<<< orphan*/  FUNC41 (struct inode*) ; 
 int /*<<< orphan*/  FUNC42 (struct inode*) ; 

struct inode *FUNC43(struct inode *dir, int mode)
{
	struct super_block *sb;
	struct buffer_head *bitmap_bh = NULL;
	struct buffer_head *bh2;
	int group, i;
	ino_t ino = 0;
	struct inode * inode;
	struct ext2_group_desc *gdp;
	struct ext2_super_block *es;
	struct ext2_inode_info *ei;
	struct ext2_sb_info *sbi;
	int err;

	sb = dir->i_sb;
	inode = FUNC30(sb);
	if (!inode)
		return FUNC0(-ENOMEM);

	ei = FUNC2(inode);
	sbi = FUNC4(sb);
	es = sbi->s_es;
	if (FUNC5(mode)) {
		if (FUNC38(sb, OLDALLOC))
			group = FUNC19(sb, dir);
		else
			group = FUNC20(sb, dir);
	} else 
		group = FUNC21(sb, dir);

	if (group == -1) {
		err = -ENOSPC;
		goto fail;
	}

	for (i = 0; i < sbi->s_groups_count; i++) {
		gdp = FUNC12(sb, group, &bh2);
		FUNC6(bitmap_bh);
		bitmap_bh = FUNC33(sb, group);
		if (!bitmap_bh) {
			err = -EIO;
			goto fail;
		}
		ino = 0;

repeat_in_this_group:
		ino = FUNC11((unsigned long *)bitmap_bh->b_data,
					      FUNC3(sb), ino);
		if (ino >= FUNC3(sb)) {
			/*
			 * Rare race: find_group_xx() decided that there were
			 * free inodes in this group, but by the time we tried
			 * to allocate one, they're all gone.  This can also
			 * occur because the counters which find_group_orlov()
			 * uses are approximate.  So just go and search the
			 * next block group.
			 */
			if (++group == sbi->s_groups_count)
				group = 0;
			continue;
		}
		if (FUNC17(FUNC34(sbi, group),
						ino, bitmap_bh->b_data)) {
			/* we lost this inode */
			if (++ino >= FUNC3(sb)) {
				/* this group is exhausted, try next group */
				if (++group == sbi->s_groups_count)
					group = 0;
				continue;
			}
			/* try to find free inode in the same group */
			goto repeat_in_this_group;
		}
		goto got;
	}

	/*
	 * Scanned all blockgroups.
	 */
	err = -ENOSPC;
	goto fail;
got:
	FUNC27(bitmap_bh);
	if (sb->s_flags & MS_SYNCHRONOUS)
		FUNC37(bitmap_bh);
	FUNC6(bitmap_bh);

	ino += group * FUNC3(sb) + 1;
	if (ino < FUNC1(sb) || ino > FUNC25(es->s_inodes_count)) {
		FUNC10 (sb, "ext2_new_inode",
			    "reserved inode or inode > inodes count - "
			    "block_group = %d,inode=%lu", group,
			    (unsigned long) ino);
		err = -EIO;
		goto fail;
	}

	FUNC31(&sbi->s_freeinodes_counter, -1);
	if (FUNC5(mode))
		FUNC32(&sbi->s_dirs_counter);

	FUNC35(FUNC34(sbi, group));
	FUNC24(&gdp->bg_free_inodes_count, -1);
	if (FUNC5(mode)) {
		if (sbi->s_debts[group] < 255)
			sbi->s_debts[group]++;
		FUNC24(&gdp->bg_used_dirs_count, 1);
	} else {
		if (sbi->s_debts[group])
			sbi->s_debts[group]--;
	}
	FUNC36(FUNC34(sbi, group));

	sb->s_dirt = 1;
	FUNC27(bh2);
	inode->i_uid = FUNC8();
	if (FUNC38 (sb, GRPID))
		inode->i_gid = dir->i_gid;
	else if (dir->i_mode & S_ISGID) {
		inode->i_gid = dir->i_gid;
		if (FUNC5(mode))
			mode |= S_ISGID;
	} else
		inode->i_gid = FUNC7();
	inode->i_mode = mode;

	inode->i_ino = ino;
	inode->i_blocks = 0;
	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME_SEC;
	FUNC29(ei->i_data, 0, sizeof(ei->i_data));
	ei->i_flags =
		FUNC15(mode, FUNC2(dir)->i_flags & EXT2_FL_INHERITED);
	ei->i_faddr = 0;
	ei->i_frag_no = 0;
	ei->i_frag_size = 0;
	ei->i_file_acl = 0;
	ei->i_dir_acl = 0;
	ei->i_dtime = 0;
	ei->i_block_alloc_info = NULL;
	ei->i_block_group = group;
	ei->i_dir_start_lookup = 0;
	ei->i_state = EXT2_STATE_NEW;
	FUNC18(inode);
	FUNC35(&sbi->s_next_gen_lock);
	inode->i_generation = sbi->s_next_generation++;
	FUNC36(&sbi->s_next_gen_lock);
	if (FUNC22(inode) < 0) {
		err = -EINVAL;
		goto fail_drop;
	}

	if (FUNC40(inode)) {
		err = -EDQUOT;
		goto fail_drop;
	}

	err = FUNC13(inode, dir);
	if (err)
		goto fail_free_drop;

	err = FUNC14(inode,dir);
	if (err)
		goto fail_free_drop;

	FUNC28(inode);
	FUNC9("allocating inode %lu\n", inode->i_ino);
	FUNC16(inode);
	return inode;

fail_free_drop:
	FUNC42(inode);

fail_drop:
	FUNC41(inode);
	inode->i_flags |= S_NOQUOTA;
	inode->i_nlink = 0;
	FUNC39(inode);
	FUNC23(inode);
	return FUNC0(err);

fail:
	FUNC26(inode);
	FUNC23(inode);
	return FUNC0(err);
}