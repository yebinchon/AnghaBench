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
struct inode {int i_blkbits; scalar_t__ i_ino; int /*<<< orphan*/  i_sb; } ;
struct file {TYPE_1__* f_dentry; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {int p_depth; struct ext4_extent* p_ext; } ;
typedef  int pgoff_t ;
typedef  int ext4_lblk_t ;
typedef  int __u64 ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*,struct ext4_extent*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ext4_ext_path*) ; 
 int FUNC7 (struct ext4_extent*) ; 
 int FUNC8 (struct ext4_extent*) ; 
 int FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*,int,struct ext4_ext_path**) ; 
 int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct ext4_ext_path*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int,int) ; 
 int FUNC15 (struct inode*,struct inode*,int,int,int*) ; 
 int FUNC16 (struct inode*,struct inode*) ; 
 int FUNC17 (struct inode*,struct inode*) ; 
 int FUNC18 (struct inode*,struct ext4_ext_path*,struct ext4_extent**) ; 
 int FUNC19 (int,int) ; 
 int FUNC20 (struct file*,struct inode*,int,int,int,int,int*) ; 

int
FUNC21(struct file *o_filp, struct file *d_filp,
		 __u64 orig_start, __u64 donor_start, __u64 len,
		 __u64 *moved_len)
{
	struct inode *orig_inode = o_filp->f_dentry->d_inode;
	struct inode *donor_inode = d_filp->f_dentry->d_inode;
	struct ext4_ext_path *orig_path = NULL, *holecheck_path = NULL;
	struct ext4_extent *ext_prev, *ext_cur, *ext_dummy;
	ext4_lblk_t block_start = orig_start;
	ext4_lblk_t block_end, seq_start, add_blocks, file_end, seq_blocks = 0;
	ext4_lblk_t rest_blocks;
	pgoff_t orig_page_offset = 0, seq_end_page;
	int ret1, ret2, depth, last_extent = 0;
	int blocks_per_page = PAGE_CACHE_SIZE >> orig_inode->i_blkbits;
	int data_offset_in_page;
	int block_len_in_page;
	int uninit;

	/* orig and donor should be different file */
	if (orig_inode->i_ino == donor_inode->i_ino) {
		FUNC3("ext4 move extent: The argument files should not "
			"be same file [ino:orig %lu, donor %lu]\n",
			orig_inode->i_ino, donor_inode->i_ino);
		return -EINVAL;
	}

	/* Protect orig and donor inodes against a truncate */
	ret1 = FUNC16(orig_inode, donor_inode);
	if (ret1 < 0)
		return ret1;

	/* Protect extent tree against block allocations via delalloc */
	FUNC0(orig_inode, donor_inode);
	/* Check the filesystem environment whether move_extent can be done */
	ret1 = FUNC15(orig_inode, donor_inode, orig_start,
				    donor_start, &len);
	if (ret1)
		goto out;

	file_end = (FUNC11(orig_inode) - 1) >> orig_inode->i_blkbits;
	block_end = block_start + len - 1;
	if (file_end < block_end)
		len -= block_end - file_end;

	ret1 = FUNC10(orig_inode, block_start, &orig_path);
	if (ret1)
		goto out;

	/* Get path structure to check the hole */
	ret1 = FUNC10(orig_inode, block_start, &holecheck_path);
	if (ret1)
		goto out;

	depth = FUNC9(orig_inode);
	ext_cur = holecheck_path[depth].p_ext;

	/*
	 * Get proper starting location of block replacement if block_start was
	 * within the hole.
	 */
	if (FUNC13(ext_cur->ee_block) +
		FUNC7(ext_cur) - 1 < block_start) {
		/*
		 * The hole exists between extents or the tail of
		 * original file.
		 */
		last_extent = FUNC18(orig_inode,
					holecheck_path, &ext_cur);
		if (last_extent < 0) {
			ret1 = last_extent;
			goto out;
		}
		last_extent = FUNC18(orig_inode, orig_path,
							&ext_dummy);
		if (last_extent < 0) {
			ret1 = last_extent;
			goto out;
		}
		seq_start = FUNC13(ext_cur->ee_block);
	} else if (FUNC13(ext_cur->ee_block) > block_start)
		/* The hole exists at the beginning of original file. */
		seq_start = FUNC13(ext_cur->ee_block);
	else
		seq_start = block_start;

	/* No blocks within the specified range. */
	if (FUNC13(ext_cur->ee_block) > block_end) {
		FUNC3("ext4 move extent: The specified range of file "
							"may be the hole\n");
		ret1 = -EINVAL;
		goto out;
	}

	/* Adjust start blocks */
	add_blocks = FUNC19(FUNC13(ext_cur->ee_block) +
			 FUNC7(ext_cur), block_end + 1) -
		     FUNC14(FUNC13(ext_cur->ee_block), block_start);

	while (!last_extent && FUNC13(ext_cur->ee_block) <= block_end) {
		seq_blocks += add_blocks;

		/* Adjust tail blocks */
		if (seq_start + seq_blocks - 1 > block_end)
			seq_blocks = block_end - seq_start + 1;

		ext_prev = ext_cur;
		last_extent = FUNC18(orig_inode, holecheck_path,
						&ext_cur);
		if (last_extent < 0) {
			ret1 = last_extent;
			break;
		}
		add_blocks = FUNC7(ext_cur);

		/*
		 * Extend the length of contiguous block (seq_blocks)
		 * if extents are contiguous.
		 */
		if (FUNC2(orig_inode,
					       ext_prev, ext_cur) &&
		    block_end >= FUNC13(ext_cur->ee_block) &&
		    !last_extent)
			continue;

		/* Is original extent is uninitialized */
		uninit = FUNC8(ext_prev);

		data_offset_in_page = seq_start % blocks_per_page;

		/*
		 * Calculate data blocks count that should be swapped
		 * at the first page.
		 */
		if (data_offset_in_page + seq_blocks > blocks_per_page) {
			/* Swapped blocks are across pages */
			block_len_in_page =
					blocks_per_page - data_offset_in_page;
		} else {
			/* Swapped blocks are in a page */
			block_len_in_page = seq_blocks;
		}

		orig_page_offset = seq_start >>
				(PAGE_CACHE_SHIFT - orig_inode->i_blkbits);
		seq_end_page = (seq_start + seq_blocks - 1) >>
				(PAGE_CACHE_SHIFT - orig_inode->i_blkbits);
		seq_start = FUNC13(ext_cur->ee_block);
		rest_blocks = seq_blocks;

		/*
		 * Up semaphore to avoid following problems:
		 * a. transaction deadlock among ext4_journal_start,
		 *    ->write_begin via pagefault, and jbd2_journal_commit
		 * b. racing with ->readpage, ->write_begin, and ext4_get_block
		 *    in move_extent_per_page
		 */
		FUNC1(orig_inode, donor_inode);

		while (orig_page_offset <= seq_end_page) {

			/* Swap original branches with new branches */
			block_len_in_page = FUNC20(
						o_filp, donor_inode,
						orig_page_offset,
						data_offset_in_page,
						block_len_in_page, uninit,
						&ret1);

			/* Count how many blocks we have exchanged */
			*moved_len += block_len_in_page;
			if (ret1 < 0)
				break;
			if (*moved_len > len) {
				FUNC5(orig_inode->i_sb,
					"We replaced blocks too much! "
					"sum of replaced: %llu requested: %llu",
					*moved_len, len);
				ret1 = -EIO;
				break;
			}

			orig_page_offset++;
			data_offset_in_page = 0;
			rest_blocks -= block_len_in_page;
			if (rest_blocks > blocks_per_page)
				block_len_in_page = blocks_per_page;
			else
				block_len_in_page = rest_blocks;
		}

		FUNC0(orig_inode, donor_inode);
		if (ret1 < 0)
			break;

		/* Decrease buffer counter */
		if (holecheck_path)
			FUNC6(holecheck_path);
		ret1 = FUNC10(orig_inode, seq_start, &holecheck_path);
		if (ret1)
			break;
		depth = holecheck_path->p_depth;

		/* Decrease buffer counter */
		if (orig_path)
			FUNC6(orig_path);
		ret1 = FUNC10(orig_inode, seq_start, &orig_path);
		if (ret1)
			break;

		ext_cur = holecheck_path[depth].p_ext;
		add_blocks = FUNC7(ext_cur);
		seq_blocks = 0;

	}
out:
	if (*moved_len) {
		FUNC4(orig_inode);
		FUNC4(donor_inode);
	}

	if (orig_path) {
		FUNC6(orig_path);
		FUNC12(orig_path);
	}
	if (holecheck_path) {
		FUNC6(holecheck_path);
		FUNC12(holecheck_path);
	}
	FUNC1(orig_inode, donor_inode);
	ret2 = FUNC17(orig_inode, donor_inode);

	if (ret1)
		return ret1;
	else if (ret2)
		return ret2;

	return 0;
}