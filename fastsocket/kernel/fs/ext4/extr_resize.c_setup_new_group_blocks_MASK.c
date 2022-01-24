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
struct super_block {int s_blocksize; } ;
struct ext4_sb_info {scalar_t__ s_groups_count; int s_itb_per_group; int /*<<< orphan*/  s_resize_lock; TYPE_2__** s_group_desc; TYPE_1__* s_es; } ;
struct ext4_new_group_data {scalar_t__ group; int block_bitmap; int inode_bitmap; int inode_table; int /*<<< orphan*/  blocks_count; } ;
struct buffer_head {int /*<<< orphan*/  b_data; int /*<<< orphan*/  b_size; } ;
typedef  struct buffer_head handle_t ;
typedef  int ext4_grpblk_t ;
typedef  int ext4_fsblk_t ;
struct TYPE_4__ {int /*<<< orphan*/  b_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_reserved_gdt_blocks; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_MAX_TRANS_DATA ; 
 struct ext4_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (struct buffer_head*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct super_block*,scalar_t__) ; 
 unsigned long FUNC7 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int FUNC9 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC11 (struct buffer_head*,struct buffer_head*) ; 
 struct buffer_head* FUNC12 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct buffer_head*,int,struct buffer_head*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC22 (struct super_block*,int) ; 
 int FUNC23 (struct super_block*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC26(struct super_block *sb,
				  struct ext4_new_group_data *input)
{
	struct ext4_sb_info *sbi = FUNC1(sb);
	ext4_fsblk_t start = FUNC9(sb, input->group);
	int reserved_gdb = FUNC6(sb, input->group) ?
		FUNC16(sbi->s_es->s_reserved_gdt_blocks) : 0;
	unsigned long gdblocks = FUNC7(sb, input->group);
	struct buffer_head *bh;
	handle_t *handle;
	ext4_fsblk_t block;
	ext4_grpblk_t bit;
	int i;
	int err = 0, err2;

	/* This transaction may be extended/restarted along the way */
	handle = FUNC12(sb, EXT4_MAX_TRANS_DATA);

	if (FUNC2(handle))
		return FUNC3(handle);

	FUNC20(&sbi->s_resize_lock);
	if (input->group != sbi->s_groups_count) {
		err = -EBUSY;
		goto exit_journal;
	}

	if (FUNC2(bh = FUNC4(handle, sb, input->block_bitmap))) {
		err = FUNC3(bh);
		goto exit_journal;
	}

	if (FUNC6(sb, input->group)) {
		FUNC8("mark backup superblock %#04llx (+0)\n", start);
		FUNC14(0, bh->b_data);
	}

	/* Copy all of the GDT blocks into the backup in this group */
	for (i = 0, bit = 1, block = start + 1;
	     i < gdblocks; i++, block++, bit++) {
		struct buffer_head *gdb;

		FUNC8("update backup group %#04llx (+%d)\n", block, bit);

		if ((err = FUNC15(handle, 1, bh)))
			goto exit_bh;

		gdb = FUNC22(sb, block);
		if (!gdb) {
			err = -EIO;
			goto exit_bh;
		}
		if ((err = FUNC11(handle, gdb))) {
			FUNC5(gdb);
			goto exit_bh;
		}
		FUNC17(gdb);
		FUNC19(gdb->b_data, sbi->s_group_desc[i]->b_data, gdb->b_size);
		FUNC24(gdb);
		FUNC25(gdb);
		FUNC10(handle, NULL, gdb);
		FUNC14(bit, bh->b_data);
		FUNC5(gdb);
	}

	/* Zero out all of the reserved backup group descriptor table blocks */
	FUNC8("clear inode table blocks %#04llx -> %#04lx\n",
			block, sbi->s_itb_per_group);
	err = FUNC23(sb, gdblocks + start + 1, reserved_gdb,
			       GFP_NOFS);
	if (err)
		goto exit_bh;
	for (i = 0, bit = gdblocks + 1; i < reserved_gdb; i++, bit++)
		FUNC14(bit, bh->b_data);


	FUNC8("mark block bitmap %#04llx (+%llu)\n", input->block_bitmap,
		   input->block_bitmap - start);
	FUNC14(input->block_bitmap - start, bh->b_data);
	FUNC8("mark inode bitmap %#04llx (+%llu)\n", input->inode_bitmap,
		   input->inode_bitmap - start);
	FUNC14(input->inode_bitmap - start, bh->b_data);

	/* Zero out all of the inode table blocks */
	block = input->inode_table;
	FUNC8("clear inode table blocks %#04llx -> %#04lx\n",
			block, sbi->s_itb_per_group);
	err = FUNC23(sb, block, sbi->s_itb_per_group, GFP_NOFS);
	if (err)
		goto exit_bh;
	for (i = 0, bit = input->inode_table - start;
	     i < sbi->s_itb_per_group; i++, bit++)
		FUNC14(bit, bh->b_data);

	if ((err = FUNC15(handle, 2, bh)))
		goto exit_bh;

	FUNC18(input->blocks_count, sb->s_blocksize * 8, bh->b_data);
	FUNC10(handle, NULL, bh);
	FUNC5(bh);
	/* Mark unused entries in inode bitmap used */
	FUNC8("clear inode bitmap %#04llx (+%llu)\n",
		   input->inode_bitmap, input->inode_bitmap - start);
	if (FUNC2(bh = FUNC4(handle, sb, input->inode_bitmap))) {
		err = FUNC3(bh);
		goto exit_journal;
	}

	FUNC18(FUNC0(sb), sb->s_blocksize * 8,
			bh->b_data);
	FUNC10(handle, NULL, bh);
exit_bh:
	FUNC5(bh);

exit_journal:
	FUNC21(&sbi->s_resize_lock);
	if ((err2 = FUNC13(handle)) && !err)
		err = err2;

	return err;
}