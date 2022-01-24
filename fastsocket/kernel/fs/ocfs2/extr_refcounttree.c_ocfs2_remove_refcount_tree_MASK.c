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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_ci; } ;
struct ocfs2_refcount_block {int /*<<< orphan*/  rf_count; int /*<<< orphan*/  rf_suballoc_slot; int /*<<< orphan*/  rf_suballoc_bit; scalar_t__ rf_blkno; } ;
struct ocfs2_inode_info {int ip_dyn_features; int /*<<< orphan*/  ip_lock; } ;
struct ocfs2_dinode {scalar_t__ i_refcount_loc; int /*<<< orphan*/  i_dyn_features; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXTENT_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int OCFS2_HAS_REFCOUNT_FL ; 
 struct ocfs2_inode_info* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int OCFS2_REFCOUNT_TREE_REMOVE_CREDITS ; 
 struct ocfs2_super* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ OCFS2_SUBALLOC_FREE ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_super*,struct ocfs2_refcount_tree*) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,int) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC25 (struct ocfs2_super*,int /*<<< orphan*/ ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC26 (struct ocfs2_refcount_tree*) ; 
 int /*<<< orphan*/ * FUNC27 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 

int FUNC32(struct inode *inode, struct buffer_head *di_bh)
{
	int ret, delete_tree = 0;
	handle_t *handle = NULL;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_inode_info *oi = FUNC3(inode);
	struct ocfs2_super *osb = FUNC4(inode->i_sb);
	struct ocfs2_refcount_block *rb;
	struct inode *alloc_inode = NULL;
	struct buffer_head *alloc_bh = NULL;
	struct buffer_head *blk_bh = NULL;
	struct ocfs2_refcount_tree *ref_tree;
	int credits = OCFS2_REFCOUNT_TREE_REMOVE_CREDITS;
	u64 blk = 0, bg_blkno = 0, ref_blkno = FUNC12(di->i_refcount_loc);
	u16 bit = 0;

	if (!(oi->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL))
		return 0;

	FUNC0(!ref_blkno);
	ret = FUNC25(osb, ref_blkno, 1, &ref_tree, &blk_bh);
	if (ret) {
		FUNC13(ret);
		return ret;
	}

	rb = (struct ocfs2_refcount_block *)blk_bh->b_data;

	/*
	 * If we are the last user, we need to free the block.
	 * So lock the allocator ahead.
	 */
	if (FUNC11(rb->rf_count) == 1) {
		blk = FUNC12(rb->rf_blkno);
		bit = FUNC9(rb->rf_suballoc_bit);
		bg_blkno = FUNC29(blk, bit);

		alloc_inode = FUNC19(osb,
					EXTENT_ALLOC_SYSTEM_INODE,
					FUNC9(rb->rf_suballoc_slot));
		if (!alloc_inode) {
			ret = -ENOMEM;
			FUNC13(ret);
			goto out;
		}
		FUNC14(&alloc_inode->i_mutex);

		ret = FUNC20(alloc_inode, &alloc_bh, 1);
		if (ret) {
			FUNC13(ret);
			goto out_mutex;
		}

		credits += OCFS2_SUBALLOC_FREE;
	}

	handle = FUNC27(osb, credits);
	if (FUNC2(handle)) {
		ret = FUNC5(handle);
		FUNC13(ret);
		goto out_unlock;
	}

	ret = FUNC22(handle, FUNC1(inode), di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC13(ret);
		goto out_commit;
	}

	ret = FUNC23(handle, &ref_tree->rf_ci, blk_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC13(ret);
		goto out_commit;
	}

	FUNC30(&oi->ip_lock);
	oi->ip_dyn_features &= ~OCFS2_HAS_REFCOUNT_FL;
	di->i_dyn_features = FUNC7(oi->ip_dyn_features);
	di->i_refcount_loc = 0;
	FUNC31(&oi->ip_lock);
	FUNC24(handle, di_bh);

	FUNC10(&rb->rf_count , -1);
	FUNC24(handle, blk_bh);

	if (!rb->rf_count) {
		delete_tree = 1;
		FUNC17(osb, ref_tree);
		ret = FUNC18(handle, alloc_inode,
					       alloc_bh, bit, bg_blkno, 1);
		if (ret)
			FUNC13(ret);
	}

out_commit:
	FUNC16(osb, handle);
out_unlock:
	if (alloc_inode) {
		FUNC21(alloc_inode, 1);
		FUNC6(alloc_bh);
	}
out_mutex:
	if (alloc_inode) {
		FUNC15(&alloc_inode->i_mutex);
		FUNC8(alloc_inode);
	}
out:
	FUNC28(osb, ref_tree, 1);
	if (delete_tree)
		FUNC26(ref_tree);
	FUNC6(blk_bh);

	return ret;
}