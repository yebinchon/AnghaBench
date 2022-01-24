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
struct mb_cache_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; struct super_block* i_sb; } ;
struct ext2_xattr_header {scalar_t__ h_refcount; } ;
struct buffer_head {int b_blocknr; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  ext2_fsblk_t ;
struct TYPE_2__ {int i_file_acl; int /*<<< orphan*/  i_block_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EDQUOT ; 
 int EIO ; 
 int ENOSPC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct ext2_xattr_header* FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*,int /*<<< orphan*/ ,int*) ; 
 int FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  ext2_xattr_cache ; 
 struct buffer_head* FUNC14 (struct inode*,struct ext2_xattr_header*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct mb_cache_entry*) ; 
 struct mb_cache_entry* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,struct ext2_xattr_header*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC27 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC29 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC30 (struct buffer_head*) ; 
 scalar_t__ FUNC31 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct inode*,int) ; 

__attribute__((used)) static int
FUNC33(struct inode *inode, struct buffer_head *old_bh,
		struct ext2_xattr_header *header)
{
	struct super_block *sb = inode->i_sb;
	struct buffer_head *new_bh = NULL;
	int error;

	if (header) {
		new_bh = FUNC14(inode, header);
		if (new_bh) {
			/* We found an identical block in the cache. */
			if (new_bh == old_bh) {
				FUNC8(new_bh, "keeping this block");
			} else {
				/* The old block is released after updating
				   the inode.  */
				FUNC8(new_bh, "reusing block");

				error = -EDQUOT;
				if (FUNC31(inode, 1)) {
					FUNC30(new_bh);
					goto cleanup;
				}
				FUNC18(&FUNC1(new_bh)->h_refcount, 1);
				FUNC8(new_bh, "refcount now=%d",
					FUNC19(FUNC1(new_bh)->h_refcount));
			}
			FUNC30(new_bh);
		} else if (old_bh && header == FUNC1(old_bh)) {
			/* Keep this block. No need to lock the block as we
			   don't need to change the reference count. */
			new_bh = old_bh;
			FUNC17(new_bh);
			FUNC15(new_bh);
		} else {
			/* We need to allocate a new block */
			ext2_fsblk_t goal = FUNC11(sb,
						FUNC0(inode)->i_block_group);
			int block = FUNC12(inode, goal, &error);
			if (error)
				goto cleanup;
			FUNC9(inode, "creating block %d", block);

			new_bh = FUNC27(sb, block);
			if (!new_bh) {
				FUNC10(inode, block, 1);
				error = -EIO;
				goto cleanup;
			}
			FUNC20(new_bh);
			FUNC26(new_bh->b_data, header, new_bh->b_size);
			FUNC28(new_bh);
			FUNC30(new_bh);
			FUNC15(new_bh);
			
			FUNC16(sb);
		}
		FUNC21(new_bh);
		if (FUNC2(inode)) {
			FUNC29(new_bh);
			error = -EIO;
			if (FUNC5(new_bh) && !FUNC6(new_bh))
				goto cleanup;
		}
	}

	/* Update the inode. */
	FUNC0(inode)->i_file_acl = new_bh ? new_bh->b_blocknr : 0;
	inode->i_ctime = CURRENT_TIME_SEC;
	if (FUNC2(inode)) {
		error = FUNC13 (inode);
		/* In case sync failed due to ENOSPC the inode was actually
		 * written (only some dirty data were not) so we just proceed
		 * as if nothing happened and cleanup the unused block */
		if (error && error != -ENOSPC) {
			if (new_bh && new_bh != old_bh)
				FUNC32(inode, 1);
			goto cleanup;
		}
	} else
		FUNC22(inode);

	error = 0;
	if (old_bh && old_bh != new_bh) {
		struct mb_cache_entry *ce;

		/*
		 * If there was an old block and we are no longer using it,
		 * release the old block.
		 */
		ce = FUNC24(ext2_xattr_cache, old_bh->b_bdev,
					old_bh->b_blocknr);
		FUNC20(old_bh);
		if (FUNC1(old_bh)->h_refcount == FUNC7(1)) {
			/* Free the old block. */
			if (ce)
				FUNC23(ce);
			FUNC8(old_bh, "freeing");
			FUNC10(inode, old_bh->b_blocknr, 1);
			/* We let our caller release old_bh, so we
			 * need to duplicate the buffer before. */
			FUNC17(old_bh);
			FUNC3(old_bh);
		} else {
			/* Decrement the refcount only. */
			FUNC18(&FUNC1(old_bh)->h_refcount, -1);
			if (ce)
				FUNC25(ce);
			FUNC32(inode, 1);
			FUNC21(old_bh);
			FUNC8(old_bh, "refcount now=%d",
				FUNC19(FUNC1(old_bh)->h_refcount));
		}
		FUNC30(old_bh);
	}

cleanup:
	FUNC4(new_bh);

	return error;
}