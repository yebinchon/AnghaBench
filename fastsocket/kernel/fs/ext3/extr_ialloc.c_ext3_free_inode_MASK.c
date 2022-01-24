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
struct inode {int i_nlink; unsigned long i_ino; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_count; struct super_block* i_sb; } ;
struct ext3_super_block {int /*<<< orphan*/  s_inodes_count; } ;
struct ext3_sb_info {int /*<<< orphan*/  s_dirs_counter; int /*<<< orphan*/  s_freeinodes_counter; struct ext3_super_block* s_es; } ;
struct ext3_group_desc {int /*<<< orphan*/  bg_used_dirs_count; int /*<<< orphan*/  bg_free_inodes_count; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 unsigned long FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (struct super_block*) ; 
 struct ext3_sb_info* FUNC3 (struct super_block*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,char*,char*,unsigned long) ; 
 struct ext3_group_desc* FUNC11 (struct super_block*,unsigned long,struct buffer_head**) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 unsigned long FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 struct buffer_head* FUNC21 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (struct ext3_sb_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 

void FUNC29 (handle_t *handle, struct inode * inode)
{
	struct super_block * sb = inode->i_sb;
	int is_directory;
	unsigned long ino;
	struct buffer_head *bitmap_bh = NULL;
	struct buffer_head *bh2;
	unsigned long block_group;
	unsigned long bit;
	struct ext3_group_desc * gdp;
	struct ext3_super_block * es;
	struct ext3_sb_info *sbi;
	int fatal = 0, err;

	if (FUNC5(&inode->i_count) > 1) {
		FUNC20 ("ext3_free_inode: inode has count=%d\n",
					FUNC5(&inode->i_count));
		return;
	}
	if (inode->i_nlink) {
		FUNC20 ("ext3_free_inode: inode has nlink=%d\n",
			inode->i_nlink);
		return;
	}
	if (!sb) {
		FUNC20("ext3_free_inode: inode on nonexistent device\n");
		return;
	}
	sbi = FUNC3(sb);

	ino = inode->i_ino;
	FUNC9 ("freeing inode %lu\n", ino);
	FUNC25(inode);

	/*
	 * Note: we must free any quota before locking the superblock,
	 * as writing the quota to disk may need the lock as well.
	 */
	FUNC28(inode);
	FUNC15(handle, inode);
	FUNC27(inode);
	FUNC26(inode);

	is_directory = FUNC4(inode->i_mode);

	/* Do this BEFORE marking the inode not in use or returning an error */
	FUNC7 (inode);

	es = FUNC3(sb)->s_es;
	if (ino < FUNC1(sb) || ino > FUNC17(es->s_inodes_count)) {
		FUNC10 (sb, "ext3_free_inode",
			    "reserved or nonexistent inode %lu", ino);
		goto error_return;
	}
	block_group = (ino - 1) / FUNC2(sb);
	bit = (ino - 1) % FUNC2(sb);
	bitmap_bh = FUNC21(sb, block_group);
	if (!bitmap_bh)
		goto error_return;

	FUNC0(bitmap_bh, "get_write_access");
	fatal = FUNC13(handle, bitmap_bh);
	if (fatal)
		goto error_return;

	/* Ok, now we can actually update the inode bitmaps.. */
	if (!FUNC8(FUNC22(sbi, block_group),
					bit, bitmap_bh->b_data))
		FUNC10 (sb, "ext3_free_inode",
			      "bit already cleared for inode %lu", ino);
	else {
		gdp = FUNC11 (sb, block_group, &bh2);

		FUNC0(bh2, "get_write_access");
		fatal = FUNC13(handle, bh2);
		if (fatal) goto error_return;

		if (gdp) {
			FUNC23(FUNC22(sbi, block_group));
			FUNC16(&gdp->bg_free_inodes_count, 1);
			if (is_directory)
				FUNC16(&gdp->bg_used_dirs_count, -1);
			FUNC24(FUNC22(sbi, block_group));
			FUNC19(&sbi->s_freeinodes_counter);
			if (is_directory)
				FUNC18(&sbi->s_dirs_counter);

		}
		FUNC0(bh2, "call ext3_journal_dirty_metadata");
		err = FUNC12(handle, bh2);
		if (!fatal) fatal = err;
	}
	FUNC0(bitmap_bh, "call ext3_journal_dirty_metadata");
	err = FUNC12(handle, bitmap_bh);
	if (!fatal)
		fatal = err;

error_return:
	FUNC6(bitmap_bh);
	FUNC14(sb, fatal);
}