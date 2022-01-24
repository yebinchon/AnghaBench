#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  ext2_fsblk_t ;
typedef  void* __le32 ;
struct TYPE_5__ {int s_blocksize; } ;
struct TYPE_4__ {void** p; void* key; struct buffer_head* bh; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
			int indirect_blks, int *blks, ext2_fsblk_t goal,
			int *offsets, Indirect *branch)
{
	int blocksize = inode->i_sb->s_blocksize;
	int i, n = 0;
	int err = 0;
	struct buffer_head *bh;
	int num;
	ext2_fsblk_t new_blocks[4];
	ext2_fsblk_t current_block;

	num = FUNC3(inode, goal, indirect_blks,
				*blks, new_blocks, &err);
	if (err)
		return err;

	branch[0].key = FUNC2(new_blocks[0]);
	/*
	 * metadata blocks and data blocks are allocated.
	 */
	for (n = 1; n <= indirect_blks;  n++) {
		/*
		 * Get buffer_head for parent block, zero it out
		 * and set the pointer to new one, then send
		 * parent to disk.
		 */
		bh = FUNC7(inode->i_sb, new_blocks[n-1]);
		branch[n].bh = bh;
		FUNC4(bh);
		FUNC6(bh->b_data, 0, blocksize);
		branch[n].p = (__le32 *) bh->b_data + offsets[n];
		branch[n].key = FUNC2(new_blocks[n]);
		*branch[n].p = branch[n].key;
		if ( n == indirect_blks) {
			current_block = new_blocks[n];
			/*
			 * End of chain, update the last new metablock of
			 * the chain to point to the new allocated
			 * data blocks numbers
			 */
			for (i=1; i < num; i++)
				*(branch[n].p + i) = FUNC2(++current_block);
		}
		FUNC8(bh);
		FUNC10(bh);
		FUNC5(bh, inode);
		/* We used to sync bh here if IS_SYNC(inode).
		 * But we now rely upon generic_write_sync()
		 * and b_inode_buffers.  But not for directories.
		 */
		if (FUNC1(inode->i_mode) && FUNC0(inode))
			FUNC9(bh);
	}
	*blks = num;
	return err;
}