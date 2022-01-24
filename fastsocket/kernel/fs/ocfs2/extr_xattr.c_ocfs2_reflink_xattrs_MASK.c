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
struct ocfs2_xattr_reflink {int /*<<< orphan*/ * xattr_reflinked; struct ocfs2_cached_dealloc_ctxt* dealloc; struct buffer_head* ref_root_bh; int /*<<< orphan*/ * ref_ci; struct buffer_head* new_bh; struct buffer_head* old_bh; struct inode* new_inode; struct inode* old_inode; } ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_ci; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_xattr_loc; int /*<<< orphan*/  i_refcount_loc; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_XATTR_FL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC9 (struct ocfs2_xattr_reflink*,struct buffer_head*) ; 
 int FUNC10 (struct ocfs2_xattr_reflink*) ; 
 int /*<<< orphan*/ * ocfs2_reflink_xattr_no_security ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct ocfs2_refcount_tree*,int) ; 

int FUNC14(struct inode *old_inode,
			 struct buffer_head *old_bh,
			 struct inode *new_inode,
			 struct buffer_head *new_bh,
			 bool preserve_security)
{
	int ret;
	struct ocfs2_xattr_reflink args;
	struct ocfs2_inode_info *oi = FUNC0(old_inode);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)old_bh->b_data;
	struct buffer_head *blk_bh = NULL;
	struct ocfs2_cached_dealloc_ctxt dealloc;
	struct ocfs2_refcount_tree *ref_tree;
	struct buffer_head *ref_root_bh = NULL;

	ret = FUNC7(FUNC1(old_inode->i_sb),
				       FUNC3(di->i_refcount_loc),
				       1, &ref_tree, &ref_root_bh);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	FUNC6(&dealloc);

	args.old_inode = old_inode;
	args.new_inode = new_inode;
	args.old_bh = old_bh;
	args.new_bh = new_bh;
	args.ref_ci = &ref_tree->rf_ci;
	args.ref_root_bh = ref_root_bh;
	args.dealloc = &dealloc;
	if (preserve_security)
		args.xattr_reflinked = NULL;
	else
		args.xattr_reflinked = ocfs2_reflink_xattr_no_security;

	if (oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL) {
		ret = FUNC10(&args);
		if (ret) {
			FUNC4(ret);
			goto out_unlock;
		}
	}

	if (!di->i_xattr_loc)
		goto out_unlock;

	ret = FUNC8(old_inode, FUNC3(di->i_xattr_loc),
				     &blk_bh);
	if (ret < 0) {
		FUNC4(ret);
		goto out_unlock;
	}

	ret = FUNC9(&args, blk_bh);
	if (ret)
		FUNC4(ret);

	FUNC2(blk_bh);

out_unlock:
	FUNC13(FUNC1(old_inode->i_sb),
				   ref_tree, 1);
	FUNC2(ref_root_bh);

	if (FUNC5(&dealloc)) {
		FUNC12(FUNC1(old_inode->i_sb), 1);
		FUNC11(FUNC1(old_inode->i_sb), &dealloc);
	}

out:
	return ret;
}