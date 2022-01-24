#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_8__ {struct buffer_head* bh; int /*<<< orphan*/  key; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EIO ; 
 int EXT4_GET_BLOCKS_CREATE ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,int*,scalar_t__,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int,unsigned int,int) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (struct inode*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (struct inode*,int,int /*<<< orphan*/ *,TYPE_1__*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct inode*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC16(handle_t *handle, struct inode *inode,
			       ext4_lblk_t iblock, unsigned int maxblocks,
			       struct buffer_head *bh_result,
			       int flags)
{
	int err = -EIO;
	ext4_lblk_t offsets[4];
	Indirect chain[4];
	Indirect *partial;
	ext4_fsblk_t goal;
	int indirect_blks;
	int blocks_to_boundary = 0;
	int depth;
	int count = 0;
	ext4_fsblk_t first_block = 0;

	FUNC1(!(FUNC10(inode, EXT4_INODE_EXTENTS)));
	FUNC1(handle != NULL || (flags & EXT4_GET_BLOCKS_CREATE) == 0);
	depth = FUNC6(inode, iblock, offsets,
				   &blocks_to_boundary);

	if (depth == 0)
		goto out;

	partial = FUNC8(inode, depth, offsets, chain, &err);

	/* Simplest case - block found, no allocation needed */
	if (!partial) {
		first_block = FUNC12(chain[depth - 1].key);
		FUNC3(bh_result);
		count++;
		/*map more blocks*/
		while (count < maxblocks && count <= blocks_to_boundary) {
			ext4_fsblk_t blk;

			blk = FUNC12(*(chain[depth-1].p + count));

			if (blk == first_block + count)
				count++;
			else
				break;
		}
		goto got_it;
	}

	/* Next simple case - plain lookup or failed read of indirect block */
	if ((flags & EXT4_GET_BLOCKS_CREATE) == 0 || err == -EIO)
		goto cleanup;

	/*
	 * Okay, we need to do block allocation.
	*/
	goal = FUNC7(inode, iblock, partial);

	/* the number of blocks need to allocate for [d,t]indirect blocks */
	indirect_blks = (chain + depth) - partial - 1;

	/*
	 * Next look up the indirect map to count the totoal number of
	 * direct blocks to allocate for this branch.
	 */
	count = FUNC5(partial, indirect_blks,
					maxblocks, blocks_to_boundary);
	/*
	 * Block out ext4_truncate while we alter the tree
	 */
	err = FUNC4(handle, inode, iblock, indirect_blks,
				&count, goal,
				offsets + (partial - chain), partial);

	/*
	 * The ext4_splice_branch call will free and forget any buffers
	 * on the new chain if there is a failure, but that risks using
	 * up transaction credits, especially for bitmaps where the
	 * credits cannot be returned.  Can we handle this somehow?  We
	 * may need to return -EAGAIN upwards in the worst case.  --sct
	 */
	if (!err)
		err = FUNC9(handle, inode, iblock,
					 partial, indirect_blks, count);
	if (err)
		goto cleanup;

	FUNC15(bh_result);

	FUNC11(handle, inode, 1);
got_it:
	FUNC13(bh_result, inode->i_sb, FUNC12(chain[depth-1].key));
	if (count > blocks_to_boundary)
		FUNC14(bh_result);
	err = count;
	/* Clean up and exit */
	partial = chain + depth - 1;	/* the whole chain */
cleanup:
	while (partial > chain) {
		FUNC0(partial->bh, "call brelse");
		FUNC2(partial->bh);
		partial--;
	}
	FUNC0(bh_result, "returned");
out:
	return err;
}