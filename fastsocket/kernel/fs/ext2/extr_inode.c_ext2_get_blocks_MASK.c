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
struct ext2_inode_info {int /*<<< orphan*/  truncate_mutex; int /*<<< orphan*/  i_block_alloc_info; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  scalar_t__ ext2_fsblk_t ;
struct TYPE_10__ {int /*<<< orphan*/  bh; int /*<<< orphan*/  key; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 struct ext2_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (struct inode*,int,int*,scalar_t__,int*,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int,unsigned long,int) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC7 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct inode*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC9 (struct inode*,int,int*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC20(struct inode *inode,
			   sector_t iblock, unsigned long maxblocks,
			   struct buffer_head *bh_result,
			   int create)
{
	int err = -EIO;
	int offsets[4];
	Indirect chain[4];
	Indirect *partial;
	ext2_fsblk_t goal;
	int indirect_blks;
	int blocks_to_boundary = 0;
	int depth;
	struct ext2_inode_info *ei = FUNC0(inode);
	int count = 0;
	ext2_fsblk_t first_block = 0;

	depth = FUNC6(inode,iblock,offsets,&blocks_to_boundary);

	if (depth == 0)
		return (err);

	partial = FUNC9(inode, depth, offsets, chain, &err);
	/* Simplest case - block found, no allocation needed */
	if (!partial) {
		first_block = FUNC13(chain[depth - 1].key);
		FUNC3(bh_result); /* What's this do? */
		count++;
		/*map more blocks*/
		while (count < maxblocks && count <= blocks_to_boundary) {
			ext2_fsblk_t blk;

			if (!FUNC19(chain, chain + depth - 1)) {
				/*
				 * Indirect block might be removed by
				 * truncate while we were reading it.
				 * Handling of that case: forget what we've
				 * got now, go to reread.
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
	if (err == -EAGAIN || !FUNC19(chain, partial)) {
		while (partial > chain) {
			FUNC2(partial->bh);
			partial--;
		}
		partial = FUNC9(inode, depth, offsets, chain, &err);
		if (!partial) {
			count++;
			FUNC16(&ei->truncate_mutex);
			if (err)
				goto cleanup;
			FUNC3(bh_result);
			goto got_it;
		}
	}

	/*
	 * Okay, we need to do block allocation.  Lazily initialize the block
	 * allocation info here if necessary
	*/
	if (FUNC1(inode->i_mode) && (!ei->i_block_alloc_info))
		FUNC10(inode);

	goal = FUNC8(inode, iblock, partial);

	/* the number of blocks need to allocate for [d,t]indirect blocks */
	indirect_blks = (chain + depth) - partial - 1;
	/*
	 * Next look up the indirect map to count the totoal number of
	 * direct blocks to allocate for this branch.
	 */
	count = FUNC5(partial, indirect_blks,
					maxblocks, blocks_to_boundary);
	/*
	 * XXX ???? Block out ext2_truncate while we alter the tree
	 */
	err = FUNC4(inode, indirect_blks, &count, goal,
				offsets + (partial - chain), partial);

	if (err) {
		FUNC16(&ei->truncate_mutex);
		goto cleanup;
	}

	if (FUNC12(inode->i_sb)) {
		/*
		 * we need to clear the block
		 */
		err = FUNC7 (inode,
			FUNC13(chain[depth-1].key));
		if (err) {
			FUNC16(&ei->truncate_mutex);
			goto cleanup;
		}
	}

	FUNC11(inode, iblock, partial, indirect_blks, count);
	FUNC16(&ei->truncate_mutex);
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
		FUNC2(partial->bh);
		partial--;
	}
	return err;
}