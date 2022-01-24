#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int i_mode; unsigned long i_ino; scalar_t__ i_nlink; int /*<<< orphan*/  i_flags; scalar_t__ i_generation; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; scalar_t__ i_blocks; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; struct super_block* i_sb; } ;
struct ext3_super_block {int /*<<< orphan*/  s_inodes_count; } ;
struct ext3_sb_info {int s_groups_count; int /*<<< orphan*/  s_next_gen_lock; int /*<<< orphan*/  s_next_generation; int /*<<< orphan*/  s_dirs_counter; int /*<<< orphan*/  s_freeinodes_counter; struct ext3_super_block* s_es; } ;
struct ext3_inode_info {int i_flags; int i_block_group; scalar_t__ i_extra_isize; int /*<<< orphan*/  i_state; int /*<<< orphan*/ * i_block_alloc_info; scalar_t__ i_dtime; scalar_t__ i_dir_acl; scalar_t__ i_file_acl; scalar_t__ i_frag_size; scalar_t__ i_frag_no; scalar_t__ i_faddr; scalar_t__ i_disksize; scalar_t__ i_dir_start_lookup; int /*<<< orphan*/  i_data; } ;
struct ext3_inode {int dummy; } ;
struct ext3_group_desc {int /*<<< orphan*/  bg_used_dirs_count; int /*<<< orphan*/  bg_free_inodes_count; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_9__ {int h_sync; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EDQUOT ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EPERM ; 
 struct inode* FUNC1 (int) ; 
 int FUNC2 (struct super_block*) ; 
 int EXT3_FL_INHERITED ; 
 scalar_t__ EXT3_GOOD_OLD_INODE_SIZE ; 
 struct ext3_inode_info* FUNC3 (struct inode*) ; 
 int FUNC4 (struct super_block*) ; 
 scalar_t__ FUNC5 (struct super_block*) ; 
 struct ext3_sb_info* FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  EXT3_STATE_NEW ; 
 int /*<<< orphan*/  GRPID ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  OLDALLOC ; 
 scalar_t__ FUNC8 (int) ; 
 int S_ISGID ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,char*,char*,int,unsigned long) ; 
 unsigned long FUNC14 (unsigned long*,int,unsigned long) ; 
 struct ext3_group_desc* FUNC15 (struct super_block*,int,struct buffer_head**) ; 
 int FUNC16 (TYPE_1__*,struct inode*,struct inode*) ; 
 int FUNC17 (TYPE_1__*,struct inode*,struct inode*) ; 
 int FUNC18 (TYPE_1__*,struct buffer_head*) ; 
 int FUNC19 (TYPE_1__*,struct buffer_head*) ; 
 int FUNC20 (TYPE_1__*,struct inode*) ; 
 int FUNC21 (int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct super_block*,int) ; 
 int FUNC25 (struct super_block*,struct inode*) ; 
 int FUNC26 (struct super_block*,struct inode*) ; 
 int FUNC27 (struct super_block*,struct inode*) ; 
 scalar_t__ FUNC28 (struct inode*) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int) ; 
 unsigned long FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC34 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC37 (struct super_block*,int) ; 
 int /*<<< orphan*/ * FUNC38 (struct ext3_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC41 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct inode*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC43 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC44 (struct inode*) ; 
 scalar_t__ FUNC45 (struct inode*) ; 
 int /*<<< orphan*/  FUNC46 (struct inode*) ; 
 int /*<<< orphan*/  FUNC47 (struct inode*) ; 

struct inode *FUNC48(handle_t *handle, struct inode * dir, int mode)
{
	struct super_block *sb;
	struct buffer_head *bitmap_bh = NULL;
	struct buffer_head *bh2;
	int group;
	unsigned long ino = 0;
	struct inode * inode;
	struct ext3_group_desc * gdp = NULL;
	struct ext3_super_block * es;
	struct ext3_inode_info *ei;
	struct ext3_sb_info *sbi;
	int err = 0;
	struct inode *ret;
	int i;

	/* Cannot create files in a deleted directory */
	if (!dir || !dir->i_nlink)
		return FUNC1(-EPERM);

	sb = dir->i_sb;
	FUNC43(dir, mode);
	inode = FUNC34(sb);
	if (!inode)
		return FUNC1(-ENOMEM);
	ei = FUNC3(inode);

	sbi = FUNC6(sb);
	es = sbi->s_es;
	if (FUNC8(mode)) {
		if (FUNC41 (sb, OLDALLOC))
			group = FUNC25(sb, dir);
		else
			group = FUNC26(sb, dir);
	} else
		group = FUNC27(sb, dir);

	err = -ENOSPC;
	if (group == -1)
		goto out;

	for (i = 0; i < sbi->s_groups_count; i++) {
		err = -EIO;

		gdp = FUNC15(sb, group, &bh2);
		if (!gdp)
			goto fail;

		FUNC9(bitmap_bh);
		bitmap_bh = FUNC37(sb, group);
		if (!bitmap_bh)
			goto fail;

		ino = 0;

repeat_in_this_group:
		ino = FUNC14((unsigned long *)
				bitmap_bh->b_data, FUNC4(sb), ino);
		if (ino < FUNC4(sb)) {

			FUNC0(bitmap_bh, "get_write_access");
			err = FUNC19(handle, bitmap_bh);
			if (err)
				goto fail;

			if (!FUNC22(FUNC38(sbi, group),
						ino, bitmap_bh->b_data)) {
				/* we won it */
				FUNC0(bitmap_bh,
					"call ext3_journal_dirty_metadata");
				err = FUNC18(handle,
								bitmap_bh);
				if (err)
					goto fail;
				goto got;
			}
			/* we lost it */
			FUNC30(handle, bitmap_bh);

			if (++ino < FUNC4(sb))
				goto repeat_in_this_group;
		}

		/*
		 * This case is possible in concurrent environment.  It is very
		 * rare.  We cannot repeat the find_group_xxx() call because
		 * that will simply return the same blockgroup, because the
		 * group descriptor metadata has not yet been updated.
		 * So we just go onto the next blockgroup.
		 */
		if (++group == sbi->s_groups_count)
			group = 0;
	}
	err = -ENOSPC;
	goto out;

got:
	ino += group * FUNC4(sb) + 1;
	if (ino < FUNC2(sb) || ino > FUNC32(es->s_inodes_count)) {
		FUNC13 (sb, "ext3_new_inode",
			    "reserved inode or inode > inodes count - "
			    "block_group = %d, inode=%lu", group, ino);
		err = -EIO;
		goto fail;
	}

	FUNC0(bh2, "get_write_access");
	err = FUNC19(handle, bh2);
	if (err) goto fail;
	FUNC39(FUNC38(sbi, group));
	FUNC31(&gdp->bg_free_inodes_count, -1);
	if (FUNC8(mode)) {
		FUNC31(&gdp->bg_used_dirs_count, 1);
	}
	FUNC40(FUNC38(sbi, group));
	FUNC0(bh2, "call ext3_journal_dirty_metadata");
	err = FUNC18(handle, bh2);
	if (err) goto fail;

	FUNC35(&sbi->s_freeinodes_counter);
	if (FUNC8(mode))
		FUNC36(&sbi->s_dirs_counter);

	inode->i_uid = FUNC11();
	if (FUNC41 (sb, GRPID))
		inode->i_gid = dir->i_gid;
	else if (dir->i_mode & S_ISGID) {
		inode->i_gid = dir->i_gid;
		if (FUNC8(mode))
			mode |= S_ISGID;
	} else
		inode->i_gid = FUNC10();
	inode->i_mode = mode;

	inode->i_ino = ino;
	/* This is the optimal IO size (for stat), not the fs block size */
	inode->i_blocks = 0;
	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME_SEC;

	FUNC33(ei->i_data, 0, sizeof(ei->i_data));
	ei->i_dir_start_lookup = 0;
	ei->i_disksize = 0;

	ei->i_flags =
		FUNC21(mode, FUNC3(dir)->i_flags & EXT3_FL_INHERITED);
#ifdef EXT3_FRAGMENTS
	ei->i_faddr = 0;
	ei->i_frag_no = 0;
	ei->i_frag_size = 0;
#endif
	ei->i_file_acl = 0;
	ei->i_dir_acl = 0;
	ei->i_dtime = 0;
	ei->i_block_alloc_info = NULL;
	ei->i_block_group = group;

	FUNC23(inode);
	if (FUNC7(inode))
		handle->h_sync = 1;
	if (FUNC28(inode) < 0) {
		err = -EINVAL;
		goto fail_drop;
	}
	FUNC39(&sbi->s_next_gen_lock);
	inode->i_generation = sbi->s_next_generation++;
	FUNC40(&sbi->s_next_gen_lock);

	ei->i_state = EXT3_STATE_NEW;
	/* See comment in ext3_iget for explanation */
	if (ino >= FUNC2(sb) + 1 &&
	    FUNC5(sb) > EXT3_GOOD_OLD_INODE_SIZE) {
		ei->i_extra_isize =
			sizeof(struct ext3_inode) - EXT3_GOOD_OLD_INODE_SIZE;
	} else {
		ei->i_extra_isize = 0;
	}

	ret = inode;
	if (FUNC45(inode)) {
		err = -EDQUOT;
		goto fail_drop;
	}

	err = FUNC16(handle, inode, dir);
	if (err)
		goto fail_free_drop;

	err = FUNC17(handle,inode, dir);
	if (err)
		goto fail_free_drop;

	err = FUNC20(handle, inode);
	if (err) {
		FUNC24(sb, err);
		goto fail_free_drop;
	}

	FUNC12("allocating inode %lu\n", inode->i_ino);
	FUNC42(inode, dir, mode);
	goto really_out;
fail:
	FUNC24(sb, err);
out:
	FUNC29(inode);
	ret = FUNC1(err);
really_out:
	FUNC9(bitmap_bh);
	return ret;

fail_free_drop:
	FUNC47(inode);

fail_drop:
	FUNC46(inode);
	inode->i_flags |= S_NOQUOTA;
	inode->i_nlink = 0;
	FUNC44(inode);
	FUNC29(inode);
	FUNC9(bitmap_bh);
	return FUNC1(err);
}