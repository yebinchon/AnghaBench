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
struct super_block {int s_flags; int /*<<< orphan*/  s_bdev; } ;
struct ext4_sb_info {int s_itb_per_group; int /*<<< orphan*/  s_inodes_per_block; } ;
struct ext4_group_info {int /*<<< orphan*/  alloc_sem; } ;
struct ext4_group_desc {int bg_flags; int /*<<< orphan*/  bg_checksum; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_BG_INODE_UNINIT ; 
 int /*<<< orphan*/  EXT4_BG_INODE_ZEROED ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 struct ext4_sb_info* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int MS_RDONLY ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 struct ext4_group_desc* FUNC11 (struct super_block*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 struct ext4_group_info* FUNC12 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ext4_sb_info*,int /*<<< orphan*/ ,struct ext4_group_desc*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC15 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC16 (struct super_block*,struct ext4_group_desc*) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC18 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct super_block*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

extern int FUNC25(struct super_block *sb, ext4_group_t group,
				 int barrier)
{
	struct ext4_group_info *grp = FUNC12(sb, group);
	struct ext4_sb_info *sbi = FUNC3(sb);
	struct ext4_group_desc *gdp = NULL;
	struct buffer_head *group_desc_bh;
	handle_t *handle;
	ext4_fsblk_t blk;
	int num, ret = 0, used_blks = 0;

	/* This should not happen, but just to be sure check this */
	if (sb->s_flags & MS_RDONLY) {
		ret = 1;
		goto out;
	}

	gdp = FUNC11(sb, group, &group_desc_bh);
	if (!gdp)
		goto out;

	/*
	 * We do not need to lock this, because we are the only one
	 * handling this flag.
	 */
	if (gdp->bg_flags & FUNC7(EXT4_BG_INODE_ZEROED))
		goto out;

	handle = FUNC18(sb, 1);
	if (FUNC4(handle)) {
		ret = FUNC5(handle);
		goto out;
	}

	FUNC8(&grp->alloc_sem);
	/*
	 * If inode bitmap was already initialized there may be some
	 * used inodes so we need to skip blocks with used inodes in
	 * inode table.
	 */
	if (!(gdp->bg_flags & FUNC7(EXT4_BG_INODE_UNINIT)))
		used_blks = FUNC1((FUNC2(sb) -
			    FUNC16(sb, gdp)),
			    sbi->s_inodes_per_block);

	if ((used_blks < 0) || (used_blks > sbi->s_itb_per_group)) {
		FUNC10(sb, "Something is wrong with group %u\n"
			   "Used itable blocks: %d"
			   "itable unused count: %u\n",
			   group, used_blks,
			   FUNC16(sb, gdp));
		ret = 1;
		goto out;
	}

	blk = FUNC15(sb, gdp) + used_blks;
	num = sbi->s_itb_per_group - used_blks;

	FUNC0(group_desc_bh, "get_write_access");
	ret = FUNC17(handle,
					    group_desc_bh);
	if (ret)
		goto err_out;

	/*
	 * Skip zeroout if the inode table is full. But we set the ZEROED
	 * flag anyway, because obviously, when it is full it does not need
	 * further zeroing.
	 */
	if (FUNC23(num == 0))
		goto skip_zeroout;

	FUNC9("going to zero out inode table in group %d\n",
		   group);
	ret = FUNC22(sb, blk, num, GFP_NOFS);
	if (ret < 0)
		goto err_out;
	if (barrier)
		FUNC6(sb->s_bdev, GFP_NOFS, NULL);

skip_zeroout:
	FUNC20(sb, group);
	gdp->bg_flags |= FUNC7(EXT4_BG_INODE_ZEROED);
	gdp->bg_checksum = FUNC13(sbi, group, gdp);
	FUNC21(sb, group);

	FUNC0(group_desc_bh,
		     "call ext4_handle_dirty_metadata");
	ret = FUNC14(handle, NULL,
					 group_desc_bh);

err_out:
	FUNC24(&grp->alloc_sem);
	FUNC19(handle);
out:
	return ret;
}