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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct omfs_sb_info {int dummy; } ;
struct omfs_header {int dummy; } ;
struct omfs_extent_entry {int dummy; } ;
struct omfs_extent {struct omfs_extent_entry e_entry; int /*<<< orphan*/  e_next; int /*<<< orphan*/  e_extent_count; } ;
struct inode {int i_blkbits; scalar_t__ i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int b_size; int /*<<< orphan*/ * b_data; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int EIO ; 
 size_t OMFS_EXTENT_CONT ; 
 size_t OMFS_EXTENT_START ; 
 struct omfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct omfs_sb_info*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct inode*,struct omfs_extent_entry*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,struct omfs_extent*,scalar_t__*) ; 
 scalar_t__ FUNC10 (struct omfs_sb_info*,struct omfs_header*,scalar_t__) ; 
 int FUNC11 (struct omfs_sb_info*,size_t) ; 
 struct buffer_head* FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, sector_t block,
			  struct buffer_head *bh_result, int create)
{
	struct buffer_head *bh;
	sector_t next, offset;
	int ret;
	u64 new_block;
	u32 max_extents;
	int extent_count;
	struct omfs_extent *oe;
	struct omfs_extent_entry *entry;
	struct omfs_sb_info *sbi = FUNC0(inode->i_sb);
	int max_blocks = bh_result->b_size >> inode->i_blkbits;
	int remain;

	ret = -EIO;
	bh = FUNC12(inode->i_sb, FUNC4(sbi, inode->i_ino));
	if (!bh)
		goto out;

	oe = (struct omfs_extent *)(&bh->b_data[OMFS_EXTENT_START]);
	max_extents = FUNC11(sbi, OMFS_EXTENT_START);
	next = inode->i_ino;

	for (;;) {

		if (FUNC10(sbi, (struct omfs_header *) bh->b_data, next))
			goto out_brelse;

		extent_count = FUNC1(oe->e_extent_count);
		next = FUNC2(oe->e_next);
		entry = &oe->e_entry;

		if (extent_count > max_extents)
			goto out_brelse;

		offset = FUNC5(inode, entry, block, extent_count, &remain);
		if (offset > 0) {
			ret = 0;
			FUNC6(bh_result, inode->i_sb, offset);
			if (remain > max_blocks)
				remain = max_blocks;
			bh_result->b_size = (remain << inode->i_blkbits);
			goto out_brelse;
		}
		if (next == ~0)
			break;

		FUNC3(bh);
		bh = FUNC12(inode->i_sb, FUNC4(sbi, next));
		if (!bh)
			goto out;
		oe = (struct omfs_extent *) (&bh->b_data[OMFS_EXTENT_CONT]);
		max_extents = FUNC11(sbi, OMFS_EXTENT_CONT);
	}
	if (create) {
		ret = FUNC9(inode, oe, &new_block);
		if (ret == 0) {
			FUNC7(bh);
			FUNC8(inode);
			FUNC6(bh_result, inode->i_sb,
					FUNC4(sbi, new_block));
		}
	}
out_brelse:
	FUNC3(bh);
out:
	return ret;
}