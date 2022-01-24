#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct ext4_iloc {int block_group; int offset; struct buffer_head* bh; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;
typedef  int ext4_fsblk_t ;
struct TYPE_2__ {int s_inode_readahead_blks; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_FEATURE_RO_COMPAT_GDT_CSUM ; 
 scalar_t__ FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct super_block*) ; 
 int FUNC3 (struct super_block*) ; 
 TYPE_1__* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  READ_META ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,int,int) ; 
 struct ext4_group_desc* FUNC9 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct super_block*,struct ext4_group_desc*) ; 
 int FUNC11 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC12 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC19 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC23 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC24(struct inode *inode,
				struct ext4_iloc *iloc, int in_mem)
{
	struct ext4_group_desc	*gdp;
	struct buffer_head	*bh;
	struct super_block	*sb = inode->i_sb;
	ext4_fsblk_t		block;
	int			inodes_per_block, inode_offset;

	iloc->bh = NULL;
	if (!FUNC14(sb, inode->i_ino))
		return -EIO;

	iloc->block_group = (inode->i_ino - 1) / FUNC2(sb);
	gdp = FUNC9(sb, iloc->block_group, NULL);
	if (!gdp)
		return -EIO;

	/*
	 * Figure out the offset within the block group inode table
	 */
	inodes_per_block = (FUNC0(sb) / FUNC3(sb));
	inode_offset = ((inode->i_ino - 1) %
			FUNC2(sb));
	block = FUNC11(sb, gdp) + (inode_offset / inodes_per_block);
	iloc->offset = (inode_offset % inodes_per_block) * FUNC3(sb);

	bh = FUNC19(sb, block);
	if (!bh) {
		FUNC8(sb, "unable to read inode block - "
			   "inode=%lu, block=%llu", inode->i_ino, block);
		return -EIO;
	}
	if (!FUNC6(bh)) {
		FUNC16(bh);

		/*
		 * If the buffer has the write error flag, we have failed
		 * to write out another inode in the same block.  In this
		 * case, we don't have to read the block because we may
		 * read the old inode data successfully.
		 */
		if (FUNC7(bh) && !FUNC6(bh))
			FUNC20(bh);

		if (FUNC6(bh)) {
			/* someone brought it uptodate while we waited */
			FUNC22(bh);
			goto has_buffer;
		}

		/*
		 * If we have all information of the inode in memory and this
		 * is the only valid inode in the block, we need not read the
		 * block.
		 */
		if (in_mem) {
			struct buffer_head *bitmap_bh;
			int i, start;

			start = inode_offset & ~(inodes_per_block - 1);

			/* Is the inode bitmap in cache? */
			bitmap_bh = FUNC19(sb, FUNC10(sb, gdp));
			if (!bitmap_bh)
				goto make_io;

			/*
			 * If the inode bitmap isn't in cache then the
			 * optimisation may end up performing two reads instead
			 * of one, so skip it.
			 */
			if (!FUNC6(bitmap_bh)) {
				FUNC5(bitmap_bh);
				goto make_io;
			}
			for (i = start; i < start + inodes_per_block; i++) {
				if (i == inode_offset)
					continue;
				if (FUNC13(i, bitmap_bh->b_data))
					break;
			}
			FUNC5(bitmap_bh);
			if (i == start + inodes_per_block) {
				/* all other inodes are free, so skip I/O */
				FUNC17(bh->b_data, 0, bh->b_size);
				FUNC20(bh);
				FUNC22(bh);
				goto has_buffer;
			}
		}

make_io:
		/*
		 * If we need to do any I/O, try to pre-readahead extra
		 * blocks from the inode table.
		 */
		if (FUNC4(sb)->s_inode_readahead_blks) {
			ext4_fsblk_t b, end, table;
			unsigned num;

			table = FUNC11(sb, gdp);
			/* s_inode_readahead_blks is always a power of 2 */
			b = block & ~(FUNC4(sb)->s_inode_readahead_blks-1);
			if (table > b)
				b = table;
			end = b + FUNC4(sb)->s_inode_readahead_blks;
			num = FUNC2(sb);
			if (FUNC1(sb,
				       EXT4_FEATURE_RO_COMPAT_GDT_CSUM))
				num -= FUNC12(sb, gdp);
			table += num / inodes_per_block;
			if (end > table)
				end = table;
			while (b <= end)
				FUNC18(sb, b++);
		}

		/*
		 * There are other valid inodes in the buffer, this inode
		 * has in-inode xattrs, or we don't have this inode in memory.
		 * Read the block from disk.
		 */
		FUNC15(bh);
		bh->b_end_io = end_buffer_read_sync;
		FUNC21(READ_META, bh);
		FUNC23(bh);
		if (!FUNC6(bh)) {
			FUNC8(sb, "unable to read inode block - inode=%lu,"
				   " block=%llu", inode->i_ino, block);
			FUNC5(bh);
			return -EIO;
		}
	}
has_buffer:
	iloc->bh = bh;
	return 0;
}