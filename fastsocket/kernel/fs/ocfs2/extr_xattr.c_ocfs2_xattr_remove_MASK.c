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
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_refcount_tree {struct ocfs2_caching_info rf_ci; } ;
struct ocfs2_inode_info {int ip_dyn_features; int /*<<< orphan*/  ip_lock; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_dyn_features; scalar_t__ i_xattr_loc; scalar_t__ i_refcount_loc; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int OCFS2_HAS_REFCOUNT_FL ; 
 int OCFS2_HAS_XATTR_FL ; 
 struct ocfs2_inode_info* FUNC2 (struct inode*) ; 
 int OCFS2_INLINE_XATTR_FL ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct ocfs2_refcount_tree*,int) ; 
 int FUNC16 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_caching_info*,struct buffer_head*) ; 
 int FUNC17 (struct inode*,struct buffer_head*,struct ocfs2_caching_info*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(struct inode *inode, struct buffer_head *di_bh)
{
	struct ocfs2_inode_info *oi = FUNC2(inode);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_refcount_tree *ref_tree = NULL;
	struct buffer_head *ref_root_bh = NULL;
	struct ocfs2_caching_info *ref_ci = NULL;
	handle_t *handle;
	int ret;

	if (!FUNC14(FUNC3(inode->i_sb)))
		return 0;

	if (!(oi->ip_dyn_features & OCFS2_HAS_XATTR_FL))
		return 0;

	if (FUNC2(inode)->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL) {
		ret = FUNC12(FUNC3(inode->i_sb),
					       FUNC7(di->i_refcount_loc),
					       1, &ref_tree, &ref_root_bh);
		if (ret) {
			FUNC8(ret);
			goto out;
		}
		ref_ci = &ref_tree->rf_ci;

	}

	if (oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL) {
		ret = FUNC17(inode, di_bh,
					       ref_ci, ref_root_bh);
		if (ret < 0) {
			FUNC8(ret);
			goto out;
		}
	}

	if (di->i_xattr_loc) {
		ret = FUNC16(inode,
					     FUNC7(di->i_xattr_loc),
					     ref_ci, ref_root_bh);
		if (ret < 0) {
			FUNC8(ret);
			goto out;
		}
	}

	handle = FUNC13((FUNC3(inode->i_sb)),
				   OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC1(handle)) {
		ret = FUNC4(handle);
		FUNC8(ret);
		goto out;
	}
	ret = FUNC10(handle, FUNC0(inode), di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC8(ret);
		goto out_commit;
	}

	di->i_xattr_loc = 0;

	FUNC18(&oi->ip_lock);
	oi->ip_dyn_features &= ~(OCFS2_INLINE_XATTR_FL | OCFS2_HAS_XATTR_FL);
	di->i_dyn_features = FUNC6(oi->ip_dyn_features);
	FUNC19(&oi->ip_lock);

	ret = FUNC11(handle, di_bh);
	if (ret < 0)
		FUNC8(ret);
out_commit:
	FUNC9(FUNC3(inode->i_sb), handle);
out:
	if (ref_tree)
		FUNC15(FUNC3(inode->i_sb), ref_tree, 1);
	FUNC5(ref_root_bh);
	return ret;
}