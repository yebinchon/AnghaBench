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
struct inode {TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext3_fsblk_t ;
typedef  void* __le32 ;
struct TYPE_5__ {int s_blocksize; } ;
struct TYPE_4__ {struct buffer_head* bh; void** p; void* key; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC13(handle_t *handle, struct inode *inode,
			int indirect_blks, int *blks, ext3_fsblk_t goal,
			int *offsets, Indirect *branch)
{
	int blocksize = inode->i_sb->s_blocksize;
	int i, n = 0;
	int err = 0;
	struct buffer_head *bh;
	int num;
	ext3_fsblk_t new_blocks[4];
	ext3_fsblk_t current_block;

	num = FUNC3(handle, inode, goal, indirect_blks,
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
		bh = FUNC10(inode->i_sb, new_blocks[n-1]);
		branch[n].bh = bh;
		FUNC8(bh);
		FUNC0(bh, "call get_create_access");
		err = FUNC7(handle, bh);
		if (err) {
			FUNC12(bh);
			FUNC1(bh);
			goto failed;
		}

		FUNC9(bh->b_data, 0, blocksize);
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
		FUNC0(bh, "marking uptodate");
		FUNC11(bh);
		FUNC12(bh);

		FUNC0(bh, "call ext3_journal_dirty_metadata");
		err = FUNC5(handle, bh);
		if (err)
			goto failed;
	}
	*blks = num;
	return err;
failed:
	/* Allocation failed, free what we already allocated */
	for (i = 1; i <= n ; i++) {
		FUNC0(branch[i].bh, "call journal_forget");
		FUNC6(handle, branch[i].bh);
	}
	for (i = 0; i <indirect_blks; i++)
		FUNC4(handle, inode, new_blocks[i], 1);

	FUNC4(handle, inode, new_blocks[i], num);

	return err;
}