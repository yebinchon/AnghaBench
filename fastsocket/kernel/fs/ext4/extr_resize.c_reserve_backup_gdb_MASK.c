#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_blocksize; } ;
struct inode {int i_blocks; struct super_block* i_sb; } ;
struct ext4_new_group_data {int group; } ;
struct ext4_iloc {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_fsblk_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_8__ {int /*<<< orphan*/ * i_data; } ;
struct TYPE_7__ {int s_gdb_count; TYPE_2__* s_sbh; TYPE_1__* s_es; } ;
struct TYPE_6__ {int b_blocknr; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_reserved_gdt_blocks; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*) ; 
 int EXT4_DIND_BLOCK ; 
 TYPE_4__* FUNC2 (struct inode*) ; 
 TYPE_3__* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,char*,int,long) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head**) ; 
 struct buffer_head** FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC15 (struct super_block*,int) ; 
 int FUNC16 (struct super_block*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC17(handle_t *handle, struct inode *inode,
			      struct ext4_new_group_data *input)
{
	struct super_block *sb = inode->i_sb;
	int reserved_gdb =FUNC13(FUNC3(sb)->s_es->s_reserved_gdt_blocks);
	struct buffer_head **primary;
	struct buffer_head *dind;
	struct ext4_iloc iloc;
	ext4_fsblk_t blk;
	__le32 *data, *end;
	int gdbackups = 0;
	int res, i;
	int err;

	primary = FUNC12(reserved_gdb * sizeof(*primary), GFP_NOFS);
	if (!primary)
		return -ENOMEM;

	data = FUNC2(inode)->i_data + EXT4_DIND_BLOCK;
	dind = FUNC15(sb, FUNC14(*data));
	if (!dind) {
		err = -EIO;
		goto exit_free;
	}

	blk = FUNC3(sb)->s_sbh->b_blocknr + 1 + FUNC3(sb)->s_gdb_count;
	data = (__le32 *)dind->b_data + (FUNC3(sb)->s_gdb_count %
					 FUNC0(sb));
	end = (__le32 *)dind->b_data + FUNC0(sb);

	/* Get each reserved primary GDT block and verify it holds backups */
	for (res = 0; res < reserved_gdb; res++, blk++) {
		if (FUNC14(*data) != blk) {
			FUNC10(sb, "reserved block %llu"
				     " not at offset %ld",
				     blk,
				     (long)(data - (__le32 *)dind->b_data));
			err = -EINVAL;
			goto exit_bh;
		}
		primary[res] = FUNC15(sb, blk);
		if (!primary[res]) {
			err = -EIO;
			goto exit_bh;
		}
		if ((gdbackups = FUNC16(sb, primary[res])) < 0) {
			FUNC4(primary[res]);
			err = gdbackups;
			goto exit_bh;
		}
		if (++data >= end)
			data = (__le32 *)dind->b_data;
	}

	for (i = 0; i < reserved_gdb; i++) {
		if ((err = FUNC7(handle, primary[i]))) {
			/*
			int j;
			for (j = 0; j < i; j++)
				ext4_journal_release_buffer(handle, primary[j]);
			 */
			goto exit_bh;
		}
	}

	if ((err = FUNC9(handle, inode, &iloc)))
		goto exit_bh;

	/*
	 * Finally we can add each of the reserved backup GDT blocks from
	 * the new group to its reserved primary GDT block.
	 */
	blk = input->group * FUNC1(sb);
	for (i = 0; i < reserved_gdb; i++) {
		int err2;
		data = (__le32 *)primary[i]->b_data;
		/* printk("reserving backup %lu[%u] = %lu\n",
		       primary[i]->b_blocknr, gdbackups,
		       blk + primary[i]->b_blocknr); */
		data[gdbackups] = FUNC5(blk + primary[i]->b_blocknr);
		err2 = FUNC6(handle, NULL, primary[i]);
		if (!err)
			err = err2;
	}
	inode->i_blocks += reserved_gdb * sb->s_blocksize >> 9;
	FUNC8(handle, inode, &iloc);

exit_bh:
	while (--res >= 0)
		FUNC4(primary[res]);
	FUNC4(dind);

exit_free:
	FUNC11(primary);

	return err;
}