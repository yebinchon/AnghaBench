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
struct super_block {int dummy; } ;
struct ext3_sb_info {scalar_t__ s_groups_count; int s_itb_per_group; int /*<<< orphan*/  s_resize_lock; TYPE_2__** s_group_desc; TYPE_1__* s_es; } ;
struct ext3_new_group_data {scalar_t__ group; int block_bitmap; int inode_bitmap; int inode_table; int /*<<< orphan*/  blocks_count; } ;
struct buffer_head {int /*<<< orphan*/  b_data; int /*<<< orphan*/  b_size; } ;
typedef  struct buffer_head handle_t ;
typedef  int ext3_grpblk_t ;
typedef  int ext3_fsblk_t ;
struct TYPE_4__ {int /*<<< orphan*/  b_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_reserved_gdt_blocks; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  EXT3_MAX_TRANS_DATA ; 
 struct ext3_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct buffer_head*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (struct super_block*,scalar_t__) ; 
 unsigned long FUNC8 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int FUNC10 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*,struct buffer_head*) ; 
 int FUNC12 (struct buffer_head*,struct buffer_head*) ; 
 struct buffer_head* FUNC13 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct buffer_head*,int,struct buffer_head*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC23 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC26(struct super_block *sb,
				  struct ext3_new_group_data *input)
{
	struct ext3_sb_info *sbi = FUNC2(sb);
	ext3_fsblk_t start = FUNC10(sb, input->group);
	int reserved_gdb = FUNC7(sb, input->group) ?
		FUNC17(sbi->s_es->s_reserved_gdt_blocks) : 0;
	unsigned long gdblocks = FUNC8(sb, input->group);
	struct buffer_head *bh;
	handle_t *handle;
	ext3_fsblk_t block;
	ext3_grpblk_t bit;
	int i;
	int err = 0, err2;

	/* This transaction may be extended/restarted along the way */
	handle = FUNC13(sb, EXT3_MAX_TRANS_DATA);

	if (FUNC3(handle))
		return FUNC4(handle);

	FUNC21(&sbi->s_resize_lock);
	if (input->group != sbi->s_groups_count) {
		err = -EBUSY;
		goto exit_journal;
	}

	if (FUNC3(bh = FUNC5(handle, sb, input->block_bitmap))) {
		err = FUNC4(bh);
		goto exit_journal;
	}

	if (FUNC7(sb, input->group)) {
		FUNC9("mark backup superblock %#04lx (+0)\n", start);
		FUNC15(0, bh->b_data);
	}

	/* Copy all of the GDT blocks into the backup in this group */
	for (i = 0, bit = 1, block = start + 1;
	     i < gdblocks; i++, block++, bit++) {
		struct buffer_head *gdb;

		FUNC9("update backup group %#04lx (+%d)\n", block, bit);

		err = FUNC16(handle, 1, bh);
		if (err)
			goto exit_bh;

		gdb = FUNC23(sb, block);
		if (!gdb) {
			err = -EIO;
			goto exit_bh;
		}
		if ((err = FUNC12(handle, gdb))) {
			FUNC6(gdb);
			goto exit_bh;
		}
		FUNC18(gdb);
		FUNC20(gdb->b_data, sbi->s_group_desc[i]->b_data, gdb->b_size);
		FUNC24(gdb);
		FUNC25(gdb);
		FUNC11(handle, gdb);
		FUNC15(bit, bh->b_data);
		FUNC6(gdb);
	}

	/* Zero out all of the reserved backup group descriptor table blocks */
	for (i = 0, bit = gdblocks + 1, block = start + bit;
	     i < reserved_gdb; i++, block++, bit++) {
		struct buffer_head *gdb;

		FUNC9("clear reserved block %#04lx (+%d)\n", block, bit);

		err = FUNC16(handle, 1, bh);
		if (err)
			goto exit_bh;

		if (FUNC3(gdb = FUNC5(handle, sb, block))) {
			err = FUNC4(bh);
			goto exit_bh;
		}
		FUNC11(handle, gdb);
		FUNC15(bit, bh->b_data);
		FUNC6(gdb);
	}
	FUNC9("mark block bitmap %#04x (+%ld)\n", input->block_bitmap,
		   input->block_bitmap - start);
	FUNC15(input->block_bitmap - start, bh->b_data);
	FUNC9("mark inode bitmap %#04x (+%ld)\n", input->inode_bitmap,
		   input->inode_bitmap - start);
	FUNC15(input->inode_bitmap - start, bh->b_data);

	/* Zero out all of the inode table blocks */
	for (i = 0, block = input->inode_table, bit = block - start;
	     i < sbi->s_itb_per_group; i++, bit++, block++) {
		struct buffer_head *it;

		FUNC9("clear inode block %#04lx (+%d)\n", block, bit);

		err = FUNC16(handle, 1, bh);
		if (err)
			goto exit_bh;

		if (FUNC3(it = FUNC5(handle, sb, block))) {
			err = FUNC4(it);
			goto exit_bh;
		}
		FUNC11(handle, it);
		FUNC6(it);
		FUNC15(bit, bh->b_data);
	}

	err = FUNC16(handle, 2, bh);
	if (err)
		goto exit_bh;

	FUNC19(input->blocks_count, FUNC0(sb),
			bh->b_data);
	FUNC11(handle, bh);
	FUNC6(bh);

	/* Mark unused entries in inode bitmap used */
	FUNC9("clear inode bitmap %#04x (+%ld)\n",
		   input->inode_bitmap, input->inode_bitmap - start);
	if (FUNC3(bh = FUNC5(handle, sb, input->inode_bitmap))) {
		err = FUNC4(bh);
		goto exit_journal;
	}

	FUNC19(FUNC1(sb), FUNC0(sb),
			bh->b_data);
	FUNC11(handle, bh);
exit_bh:
	FUNC6(bh);

exit_journal:
	FUNC22(&sbi->s_resize_lock);
	if ((err2 = FUNC14(handle)) && !err)
		err = err2;

	return err;
}