#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {int p_depth; TYPE_1__* p_hdr; struct buffer_head* p_bh; void* p_block; scalar_t__ p_idx; struct ext4_extent* p_ext; } ;
struct buffer_head {int dummy; } ;
typedef  struct ext4_ext_path handle_t ;
typedef  int ext4_lblk_t ;
struct TYPE_7__ {scalar_t__ eh_entries; int /*<<< orphan*/  eh_max; scalar_t__ eh_depth; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,char*,int) ; 
 int EXT4_EXT_MARK_UNINIT1 ; 
 int EXT4_EXT_MARK_UNINIT2 ; 
 int EXT4_GET_BLOCKS_DIO ; 
 int EXT4_GET_BLOCKS_METADATA_NOFAIL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int EXT_MAX_BLOCKS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC3 (struct ext4_ext_path*) ; 
 int FUNC4 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*,TYPE_1__*,int) ; 
 scalar_t__ FUNC9 (struct inode*,TYPE_1__*,int,struct buffer_head*) ; 
 int FUNC10 (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC12 (struct inode*,int,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*) ; 
 int FUNC14 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (struct ext4_extent*) ; 
 scalar_t__ FUNC17 (struct ext4_ext_path*) ; 
 int FUNC18 (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*) ; 
 int FUNC19 (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 struct ext4_ext_path* FUNC22 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct ext4_ext_path*) ; 
 int FUNC24 (struct ext4_ext_path*,struct inode*,struct ext4_ext_path*,int,int,int) ; 
 TYPE_1__* FUNC25 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int FUNC27 (struct inode*) ; 
 TYPE_1__* FUNC28 (struct inode*) ; 
 int /*<<< orphan*/  FUNC29 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC30 (int,int /*<<< orphan*/ ) ; 
 void* FUNC31 (scalar_t__) ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct ext4_ext_path*,int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC34 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC35(struct inode *inode, ext4_lblk_t start,
				ext4_lblk_t end)
{
	struct super_block *sb = inode->i_sb;
	int depth = FUNC27(inode);
	struct ext4_ext_path *path = NULL;
	handle_t *handle;
	int i = 0, err = 0;

	FUNC26("truncate since %u to %u\n", start, end);

	/* probably first extent we're gonna free will be last in block */
	handle = FUNC22(inode, depth + 1);
	if (FUNC3(handle))
		return FUNC4(handle);

again:
	FUNC15(inode);

	/*
	 * Check if we are removing extents inside the extent tree. If that
	 * is the case, we are going to punch a hole inside the extent tree
	 * so we have to check whether we need to split the extent covering
	 * the last block to remove so we can easily remove the part of it
	 * in ext4_ext_rm_leaf().
	 */
	if (end < EXT_MAX_BLOCKS - 1) {
		struct ext4_extent *ex;
		ext4_lblk_t ee_block;

		/* find extent for this block */
		path = FUNC12(inode, end, NULL);
		if (FUNC3(path)) {
			FUNC23(handle);
			return FUNC4(path);
		}
		depth = FUNC27(inode);
		/* Leaf not may not exist only if inode has no blocks at all */
		ex = path[depth].p_ext;
		if (!ex) {
			if (depth) {
				FUNC0(inode,
						 "path[%d].p_hdr == NULL",
						 depth);
				err = -EIO;
			}
			goto out;
		}

		ee_block = FUNC32(ex->ee_block);

		/*
		 * See if the last block is inside the extent, if so split
		 * the extent at 'end' block so we can easily remove the
		 * tail of the first part of the split extent in
		 * ext4_ext_rm_leaf().
		 */
		if (end >= ee_block &&
		    end < ee_block + FUNC14(ex) - 1) {
			int split_flag = 0;

			if (FUNC16(ex))
				split_flag = EXT4_EXT_MARK_UNINIT1 |
					     EXT4_EXT_MARK_UNINIT2;

			/*
			 * Split the extent in two so that 'end' is the last
			 * block in the first new extent. Also we should not
			 * fail removing space due to ENOSPC so try to use
			 * reserved block if that happens.
			 */
			err = FUNC24(handle, inode, path,
					end + 1, split_flag,
					EXT4_GET_BLOCKS_DIO |
					EXT4_GET_BLOCKS_METADATA_NOFAIL);

			if (err < 0)
				goto out;
		}
	}
	/*
	 * We start scanning from right side, freeing all the blocks
	 * after i_size and walking into the tree depth-wise.
	 */
	depth = FUNC27(inode);
	if (path) {
		int k = i = depth;
		while (--k > 0)
			path[k].p_block =
				FUNC31(path[k].p_hdr->eh_entries)+1;
	} else {
		path = FUNC30(sizeof(struct ext4_ext_path) * (depth + 1),
			       GFP_NOFS);
		if (path == NULL) {
			FUNC23(handle);
			return -ENOMEM;
		}
		path[0].p_depth = depth;
		path[0].p_hdr = FUNC28(inode);
		i = 0;

		if (FUNC8(inode, path[0].p_hdr, depth)) {
			err = -EIO;
			goto out;
		}
	}
	err = 0;

	while (i >= 0 && err == 0) {
		if (i == depth) {
			/* this is leaf block */
			err = FUNC19(handle, inode, path,
					start, end);
			/* root level has p_bh == NULL, brelse() eats this */
			FUNC6(path[i].p_bh);
			path[i].p_bh = NULL;
			i--;
			continue;
		}

		/* this is index block */
		if (!path[i].p_hdr) {
			FUNC26("initialize header\n");
			path[i].p_hdr = FUNC25(path[i].p_bh);
		}

		if (!path[i].p_idx) {
			/* this level hasn't been touched yet */
			path[i].p_idx = FUNC2(path[i].p_hdr);
			path[i].p_block = FUNC31(path[i].p_hdr->eh_entries)+1;
			FUNC26("init index ptr: hdr 0x%p, num %d\n",
				  path[i].p_hdr,
				  FUNC31(path[i].p_hdr->eh_entries));
		} else {
			/* we were already here, see at next index */
			path[i].p_idx--;
		}

		FUNC26("level %d - index, first 0x%p, cur 0x%p\n",
				i, FUNC1(path[i].p_hdr),
				path[i].p_idx);
		if (FUNC17(path + i)) {
			struct buffer_head *bh;
			/* go to the next level */
			FUNC26("move to level %d (block %llu)\n",
				  i + 1, FUNC21(path[i].p_idx));
			FUNC33(path + i + 1, 0, sizeof(*path));
			bh = FUNC34(sb, FUNC21(path[i].p_idx));
			if (!bh) {
				/* should we reset i_size? */
				err = -EIO;
				break;
			}
			if (FUNC5(i + 1 > depth)) {
				err = -EIO;
				break;
			}
			if (FUNC9(inode, FUNC25(bh),
							depth - i - 1, bh)) {
				err = -EIO;
				break;
			}
			path[i + 1].p_bh = bh;

			/* save actual number of indexes since this
			 * number is changed at the next iteration */
			path[i].p_block = FUNC31(path[i].p_hdr->eh_entries);
			i++;
		} else {
			/* we finished processing this index, go up */
			if (path[i].p_hdr->eh_entries == 0 && i > 0) {
				/* index is empty, remove it;
				 * handle must be already prepared by the
				 * truncatei_leaf() */
				err = FUNC18(handle, inode, path + i);
			}
			/* root level has p_bh == NULL, brelse() eats this */
			FUNC6(path[i].p_bh);
			path[i].p_bh = NULL;
			i--;
			FUNC26("return to level %d\n", i);
		}
	}

	/* TODO: flexible tree reduction should be here */
	if (path->p_hdr->eh_entries == 0) {
		/*
		 * truncate to zero freed all the tree,
		 * so we need to correct eh_depth
		 */
		err = FUNC13(handle, inode, path);
		if (err == 0) {
			FUNC28(inode)->eh_depth = 0;
			FUNC28(inode)->eh_max =
				FUNC7(FUNC20(inode, 0));
			err = FUNC10(handle, inode, path);
		}
	}
out:
	FUNC11(path);
	FUNC29(path);
	if (err == -EAGAIN) {
		path = NULL;
		goto again;
	}
	FUNC23(handle);

	return err;
}