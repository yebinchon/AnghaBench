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
typedef  scalar_t__ u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_ci; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_refcount_loc; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 unsigned int OCFS2_EXT_REFCOUNTED ; 
 int OCFS2_HAS_REFCOUNT_FL ; 
 int OCFS2_HAS_XATTR_FL ; 
 struct ocfs2_inode_info* FUNC2 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct inode*,struct ocfs2_extent_tree*,int /*<<< orphan*/ *,struct buffer_head*,scalar_t__,scalar_t__,scalar_t__,struct ocfs2_cached_dealloc_ctxt*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC12 (struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_super*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 
 int FUNC21 (struct inode*,struct buffer_head*,int /*<<< orphan*/ *,struct buffer_head*,struct ocfs2_cached_dealloc_ctxt*) ; 

__attribute__((used)) static int FUNC22(struct inode *inode,
				      struct buffer_head *di_bh)
{
	int ret, data_changed = 0;
	struct buffer_head *ref_root_bh = NULL;
	struct ocfs2_inode_info *oi = FUNC2(inode);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct ocfs2_refcount_tree *ref_tree;
	unsigned int ext_flags;
	loff_t size;
	u32 cpos, num_clusters, clusters, p_cluster;
	struct ocfs2_cached_dealloc_ctxt dealloc;
	struct ocfs2_extent_tree di_et;

	FUNC15(&dealloc);

	if (!(oi->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL)) {
		ret = FUNC11(inode, di_bh);
		if (ret) {
			FUNC7(ret);
			goto out;
		}
	}

	FUNC0(!di->i_refcount_loc);
	ret = FUNC17(osb,
				       FUNC6(di->i_refcount_loc), 1,
				       &ref_tree, &ref_root_bh);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	if (oi->ip_dyn_features & OCFS2_INLINE_DATA_FL)
		goto attach_xattr;

	FUNC16(&di_et, FUNC1(inode), di_bh);

	size = FUNC5(inode);
	clusters = FUNC10(inode->i_sb, size);

	cpos = 0;
	while (cpos < clusters) {
		ret = FUNC14(inode, cpos, &p_cluster,
					 &num_clusters, &ext_flags);

		if (p_cluster && !(ext_flags & OCFS2_EXT_REFCOUNTED)) {
			ret = FUNC8(inode, &di_et,
						      &ref_tree->rf_ci,
						      ref_root_bh, cpos,
						      p_cluster, num_clusters,
						      &dealloc, NULL);
			if (ret) {
				FUNC7(ret);
				goto unlock;
			}

			data_changed = 1;
		}
		cpos += num_clusters;
	}

attach_xattr:
	if (oi->ip_dyn_features & OCFS2_HAS_XATTR_FL) {
		ret = FUNC21(inode, di_bh,
						       &ref_tree->rf_ci,
						       ref_root_bh,
						       &dealloc);
		if (ret) {
			FUNC7(ret);
			goto unlock;
		}
	}

	if (data_changed) {
		ret = FUNC9(inode, di_bh);
		if (ret)
			FUNC7(ret);
	}

unlock:
	FUNC20(osb, ref_tree, 1);
	FUNC4(ref_root_bh);

	if (!ret && FUNC12(&dealloc)) {
		FUNC19(osb, 1);
		FUNC18(osb, &dealloc);
	}
out:
	/*
	 * Empty the extent map so that we may get the right extent
	 * record from the disk.
	 */
	FUNC13(inode, 0);

	return ret;
}