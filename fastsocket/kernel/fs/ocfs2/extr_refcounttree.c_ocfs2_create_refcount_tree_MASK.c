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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ocfs2_super {int slot_num; int fs_generation; int /*<<< orphan*/  osb_lock; int /*<<< orphan*/  s_next_generation; int /*<<< orphan*/  sb; } ;
struct ocfs2_refcount_tree {scalar_t__ rf_generation; int /*<<< orphan*/  rf_ci; } ;
struct TYPE_4__ {void* rl_count; } ;
struct ocfs2_refcount_block {scalar_t__ rf_generation; TYPE_1__ rf_records; void* rf_count; void* rf_blkno; void* rf_fs_generation; void* rf_suballoc_bit; void* rf_suballoc_slot; } ;
struct ocfs2_inode_info {int ip_dyn_features; int /*<<< orphan*/  ip_lock; } ;
struct ocfs2_dinode {void* i_refcount_loc; void* i_dyn_features; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int OCFS2_HAS_REFCOUNT_FL ; 
 struct ocfs2_inode_info* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_REFCOUNT_BLOCK_SIGNATURE ; 
 int /*<<< orphan*/  OCFS2_REFCOUNT_TREE_CREATE_CREDITS ; 
 struct ocfs2_super* FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 void* FUNC7 (int) ; 
 void* FUNC8 (int) ; 
 void* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_refcount_tree*) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_refcount_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 struct ocfs2_refcount_tree* FUNC15 (struct ocfs2_super*,scalar_t__) ; 
 int FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int,int*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_super*,struct ocfs2_refcount_tree*) ; 
 struct ocfs2_refcount_tree* FUNC19 (struct ocfs2_super*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC21 (struct ocfs2_super*,struct ocfs2_refcount_tree*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct ocfs2_super*,struct ocfs2_refcount_tree*) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct ocfs2_refcount_tree*) ; 
 int FUNC29 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC31 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC32 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC36(struct inode *inode,
				      struct buffer_head *di_bh)
{
	int ret;
	handle_t *handle = NULL;
	struct ocfs2_alloc_context *meta_ac = NULL;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_inode_info *oi = FUNC3(inode);
	struct ocfs2_super *osb = FUNC4(inode->i_sb);
	struct buffer_head *new_bh = NULL;
	struct ocfs2_refcount_block *rb;
	struct ocfs2_refcount_tree *new_tree = NULL, *tree = NULL;
	u16 suballoc_bit_start;
	u32 num_got;
	u64 first_blkno;

	FUNC0(oi->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL);

	FUNC13(0, "create tree for inode %lu\n", inode->i_ino);

	ret = FUNC29(osb, 1, &meta_ac);
	if (ret) {
		FUNC14(ret);
		goto out;
	}

	handle = FUNC31(osb, OCFS2_REFCOUNT_TREE_CREATE_CREDITS);
	if (FUNC2(handle)) {
		ret = FUNC5(handle);
		FUNC14(ret);
		goto out;
	}

	ret = FUNC23(handle, FUNC1(inode), di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC14(ret);
		goto out_commit;
	}

	ret = FUNC16(osb, handle, meta_ac, 1,
				   &suballoc_bit_start, &num_got,
				   &first_blkno);
	if (ret) {
		FUNC14(ret);
		goto out_commit;
	}

	new_tree = FUNC15(osb, first_blkno);
	if (!new_tree) {
		ret = -ENOMEM;
		FUNC14(ret);
		goto out_commit;
	}

	new_bh = FUNC32(inode->i_sb, first_blkno);
	FUNC30(&new_tree->rf_ci, new_bh);

	ret = FUNC24(handle, &new_tree->rf_ci, new_bh,
				      OCFS2_JOURNAL_ACCESS_CREATE);
	if (ret) {
		FUNC14(ret);
		goto out_commit;
	}

	/* Initialize ocfs2_refcount_block. */
	rb = (struct ocfs2_refcount_block *)new_bh->b_data;
	FUNC12(rb, 0, inode->i_sb->s_blocksize);
	FUNC35((void *)rb, OCFS2_REFCOUNT_BLOCK_SIGNATURE);
	rb->rf_suballoc_slot = FUNC7(osb->slot_num);
	rb->rf_suballoc_bit = FUNC7(suballoc_bit_start);
	rb->rf_fs_generation = FUNC8(osb->fs_generation);
	rb->rf_blkno = FUNC9(first_blkno);
	rb->rf_count = FUNC8(1);
	rb->rf_records.rl_count =
			FUNC7(FUNC27(osb->sb));
	FUNC33(&osb->osb_lock);
	rb->rf_generation = osb->s_next_generation++;
	FUNC34(&osb->osb_lock);

	FUNC25(handle, new_bh);

	FUNC33(&oi->ip_lock);
	oi->ip_dyn_features |= OCFS2_HAS_REFCOUNT_FL;
	di->i_dyn_features = FUNC7(oi->ip_dyn_features);
	di->i_refcount_loc = FUNC9(first_blkno);
	FUNC34(&oi->ip_lock);

	FUNC13(0, "created tree for inode %lu, refblock %llu\n",
	     inode->i_ino, (unsigned long long)first_blkno);

	FUNC25(handle, di_bh);

	/*
	 * We have to init the tree lock here since it will use
	 * the generation number to create it.
	 */
	new_tree->rf_generation = FUNC11(rb->rf_generation);
	FUNC21(osb, new_tree, first_blkno,
				      new_tree->rf_generation);

	FUNC33(&osb->osb_lock);
	tree = FUNC19(osb, first_blkno);

	/*
	 * We've just created a new refcount tree in this block.  If
	 * we found a refcount tree on the ocfs2_super, it must be
	 * one we just deleted.  We free the old tree before
	 * inserting the new tree.
	 */
	FUNC0(tree && tree->rf_generation == new_tree->rf_generation);
	if (tree)
		FUNC18(osb, tree);
	FUNC22(osb, new_tree);
	FUNC34(&osb->osb_lock);
	new_tree = NULL;
	if (tree)
		FUNC28(tree);

out_commit:
	FUNC17(osb, handle);

out:
	if (new_tree) {
		FUNC26(&new_tree->rf_ci);
		FUNC10(new_tree);
	}

	FUNC6(new_bh);
	if (meta_ac)
		FUNC20(meta_ac);

	return ret;
}