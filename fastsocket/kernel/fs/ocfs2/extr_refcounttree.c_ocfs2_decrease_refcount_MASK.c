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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_ci; int /*<<< orphan*/  rf_blkno; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OCFS2_HAS_REFCOUNT_FL ; 
 struct ocfs2_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_refcount_tree**) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head**) ; 

int FUNC9(struct inode *inode,
			    handle_t *handle, u32 cpos, u32 len,
			    struct ocfs2_alloc_context *meta_ac,
			    struct ocfs2_cached_dealloc_ctxt *dealloc,
			    int delete)
{
	int ret;
	u64 ref_blkno;
	struct ocfs2_inode_info *oi = FUNC1(inode);
	struct buffer_head *ref_root_bh = NULL;
	struct ocfs2_refcount_tree *tree;

	FUNC0(!(oi->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL));

	ret = FUNC6(inode, &ref_blkno);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	ret = FUNC7(FUNC2(inode->i_sb), ref_blkno, &tree);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	ret = FUNC8(&tree->rf_ci, tree->rf_blkno,
					&ref_root_bh);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	ret = FUNC3(handle, &tree->rf_ci, ref_root_bh,
					cpos, len, meta_ac, dealloc, delete);
	if (ret)
		FUNC5(ret);
out:
	FUNC4(ref_root_bh);
	return ret;
}