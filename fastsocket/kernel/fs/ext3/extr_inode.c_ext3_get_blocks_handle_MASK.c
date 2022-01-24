#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct ext3_inode_info {int /*<<< orphan*/  truncate_mutex; int /*<<< orphan*/  i_block_alloc_info; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext3_fsblk_t ;
struct TYPE_10__ {int /*<<< orphan*/  key; struct buffer_head* bh; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EAGAIN ; 
 int EIO ; 
 struct ext3_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,int,int*,scalar_t__,int*,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int,unsigned long,int) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC9 (struct inode*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC10 (struct inode*,int,int*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,TYPE_1__*) ; 

int FUNC22(handle_t *handle, struct inode *inode,
		sector_t iblock, unsigned long maxblocks,
		struct buffer_head *bh_result,
		int create)
{
	int err = -EIO;
	int offsets[4];
	Indirect chain[4];
	Indirect *partial;
	ext3_fsblk_t goal;
	int indirect_blks;
	int blocks_to_boundary = 0;
	int depth;
	struct ext3_inode_info *ei = FUNC1(inode);
	int count = 0;
	ext3_fsblk_t first_block = 0;


	FUNC19(inode, iblock, maxblocks, create);
	FUNC2(handle != NULL || create == 0);
	depth = FUNC8(inode,iblock,offsets,&blocks_to_boundary);

	if (depth == 0)
		goto out;

	partial = FUNC10(inode, depth, offsets, chain, &err);

	/* Simplest case - block found, no allocation needed */
	if (!partial) {
		first_block = FUNC13(chain[depth - 1].key);
		FUNC5(bh_result);
		count++;
		/*map more blocks*/
		while (count < maxblocks && count <= blocks_to_boundary) {
			ext3_fsblk_t blk;

			if (!FUNC21(chain, chain + depth - 1)) {
				/*
				 * Indirect block might be removed by
				 * truncate while we were reading it.
				 * Handling of that case: forget what we've
				 * got now. Flag the err as EAGAIN, so it
				 * will reread.
				 */
				err = -EAGAIN;
				count = 0;
				break;
			}
			blk = FUNC13(*(chain[depth-1].p + count));

			if (blk == first_block + count)
				count++;
			else
				break;
		}
		if (err != -EAGAIN)
			goto got_it;
	}

	/* Next simple case - plain lookup or failed read of indirect block */
	if (!create || err == -EIO)
		goto cleanup;

	FUNC15(&ei->truncate_mutex);

	/*
	 * If the indirect block is missing while we are reading
	 * the chain(ext3_get_branch() returns -EAGAIN err), or
	 * if the chain has been changed after we grab the semaphore,
	 * (either because another process truncated this branch, or
	 * another get_block allocated this branch) re-grab the chain to see if
	 * the request block has been allocated or not.
	 *
	 * Since we already block the truncate/other get_block
	 * at this point, we will have the current copy of the chain when we
	 * splice the branch into the tree.
	 */
	if (err == -EAGAIN || !FUNC21(chain, partial)) {
		while (partial > chain) {
			FUNC4(partial->bh);
			partial--;
		}
		partial = FUNC10(inode, depth, offsets, chain, &err);
		if (!partial) {
			count++;
			FUNC16(&ei->truncate_mutex);
			if (err)
				goto cleanup;
			FUNC5(bh_result);
			goto got_it;
		}
	}

	/*
	 * Okay, we need to do block allocation.  Lazily initialize the block
	 * allocation info here if necessary
	*/
	if (FUNC3(inode->i_mode) && (!ei->i_block_alloc_info))
		FUNC11(inode);

	goal = FUNC9(inode, iblock, partial);

	/* the number of blocks need to allocate for [d,t]indirect blocks */
	indirect_blks = (chain + depth) - partial - 1;

	/*
	 * Next look up the indirect map to count the totoal number of
	 * direct blocks to allocate for this branch.
	 */
	count = FUNC7(partial, indirect_blks,
					maxblocks, blocks_to_boundary);
	/*
	 * Block out ext3_truncate while we alter the tree
	 */
	err = FUNC6(handle, inode, indirect_blks, &count, goal,
				offsets + (partial - chain), partial);

	/*
	 * The ext3_splice_branch call will free and forget any buffers
	 * on the new chain if there is a failure, but that risks using
	 * up transaction credits, especially for bitmaps where the
	 * credits cannot be returned.  Can we handle this somehow?  We
	 * may need to return -EAGAIN upwards in the worst case.  --sct
	 */
	if (!err)
		err = FUNC12(handle, inode, iblock,
					partial, indirect_blks, count);
	FUNC16(&ei->truncate_mutex);
	if (err)
		goto cleanup;

	FUNC18(bh_result);
got_it:
	FUNC14(bh_result, inode->i_sb, FUNC13(chain[depth-1].key));
	if (count > blocks_to_boundary)
		FUNC17(bh_result);
	err = count;
	/* Clean up and exit */
	partial = chain + depth - 1;	/* the whole chain */
cleanup:
	while (partial > chain) {
		FUNC0(partial->bh, "call brelse");
		FUNC4(partial->bh);
		partial--;
	}
	FUNC0(bh_result, "returned");
out:
	FUNC20(inode, iblock,
				   depth ? FUNC13(chain[depth-1].key) : 0,
				   count, err);
	return err;
}