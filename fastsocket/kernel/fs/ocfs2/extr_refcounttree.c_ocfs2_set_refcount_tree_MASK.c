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
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_ci; } ;
struct ocfs2_refcount_block {int /*<<< orphan*/  rf_count; } ;
struct ocfs2_inode_info {int ip_dyn_features; int /*<<< orphan*/  ip_lock; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_refcount_loc; int /*<<< orphan*/  i_dyn_features; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int OCFS2_HAS_REFCOUNT_FL ; 
 struct ocfs2_inode_info* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_REFCOUNT_TREE_SET_CREDITS ; 
 struct ocfs2_super* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC15 (struct ocfs2_super*,int /*<<< orphan*/ ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ; 
 int /*<<< orphan*/ * FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct inode *inode,
				   struct buffer_head *di_bh,
				   u64 refcount_loc)
{
	int ret;
	handle_t *handle = NULL;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_inode_info *oi = FUNC3(inode);
	struct ocfs2_super *osb = FUNC4(inode->i_sb);
	struct buffer_head *ref_root_bh = NULL;
	struct ocfs2_refcount_block *rb;
	struct ocfs2_refcount_tree *ref_tree;

	FUNC0(oi->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL);

	ret = FUNC15(osb, refcount_loc, 1,
				       &ref_tree, &ref_root_bh);
	if (ret) {
		FUNC10(ret);
		return ret;
	}

	handle = FUNC16(osb, OCFS2_REFCOUNT_TREE_SET_CREDITS);
	if (FUNC2(handle)) {
		ret = FUNC5(handle);
		FUNC10(ret);
		goto out;
	}

	ret = FUNC12(handle, FUNC1(inode), di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC10(ret);
		goto out_commit;
	}

	ret = FUNC13(handle, &ref_tree->rf_ci, ref_root_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC10(ret);
		goto out_commit;
	}

	rb = (struct ocfs2_refcount_block *)ref_root_bh->b_data;
	FUNC9(&rb->rf_count, 1);

	FUNC14(handle, ref_root_bh);

	FUNC18(&oi->ip_lock);
	oi->ip_dyn_features |= OCFS2_HAS_REFCOUNT_FL;
	di->i_dyn_features = FUNC7(oi->ip_dyn_features);
	di->i_refcount_loc = FUNC8(refcount_loc);
	FUNC19(&oi->ip_lock);
	FUNC14(handle, di_bh);

out_commit:
	FUNC11(osb, handle);
out:
	FUNC17(osb, ref_tree, 1);
	FUNC6(ref_root_bh);

	return ret;
}