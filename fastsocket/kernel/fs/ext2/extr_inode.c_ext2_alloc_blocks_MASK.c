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
struct inode {int dummy; } ;
typedef  scalar_t__ ext2_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (struct inode*,scalar_t__,unsigned long*,int*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode,
			ext2_fsblk_t goal, int indirect_blks, int blks,
			ext2_fsblk_t new_blocks[4], int *err)
{
	int target, i;
	unsigned long count = 0;
	int index = 0;
	ext2_fsblk_t current_block = 0;
	int ret = 0;

	/*
	 * Here we try to allocate the requested multiple blocks at once,
	 * on a best-effort basis.
	 * To build a branch, we should allocate blocks for
	 * the indirect blocks(if not allocated yet), and at least
	 * the first direct block of this branch.  That's the
	 * minimum number of blocks need to allocate(required)
	 */
	target = blks + indirect_blks;

	while (1) {
		count = target;
		/* allocating blocks for indirect blocks and direct blocks */
		current_block = FUNC1(inode,goal,&count,err);
		if (*err)
			goto failed_out;

		target -= count;
		/* allocate blocks for indirect blocks */
		while (index < indirect_blks && count) {
			new_blocks[index++] = current_block++;
			count--;
		}

		if (count > 0)
			break;
	}

	/* save the new block number for the first direct block */
	new_blocks[index] = current_block;

	/* total number of blocks allocated for direct blocks */
	ret = count;
	*err = 0;
	return ret;
failed_out:
	for (i = 0; i <index; i++)
		FUNC0(inode, new_blocks[i], 1);
	return ret;
}