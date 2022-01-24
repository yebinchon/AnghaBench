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
typedef  scalar_t__ u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_list; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_refcount_loc; TYPE_1__ id2; } ;
struct ocfs2_cow_context {int /*<<< orphan*/  data_et; int /*<<< orphan*/  get_clusters; int /*<<< orphan*/  cow_duplicate_clusters; struct buffer_head* ref_root_bh; struct ocfs2_refcount_tree* ref_tree; scalar_t__ cow_len; scalar_t__ cow_start; struct inode* inode; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int OCFS2_HAS_REFCOUNT_FL ; 
 struct ocfs2_inode_info* FUNC2 (struct inode*) ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_cow_context*) ; 
 struct ocfs2_cow_context* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  ocfs2_di_get_clusters ; 
 int /*<<< orphan*/  ocfs2_duplicate_clusters_by_page ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int FUNC14 (struct ocfs2_cow_context*) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 

__attribute__((used)) static int FUNC16(struct inode *inode,
				   struct buffer_head *di_bh,
				   u32 cpos, u32 write_len, u32 max_cpos)
{
	int ret;
	u32 cow_start = 0, cow_len = 0;
	struct ocfs2_inode_info *oi = FUNC2(inode);
	struct ocfs2_super *osb = FUNC3(inode->i_sb);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct buffer_head *ref_root_bh = NULL;
	struct ocfs2_refcount_tree *ref_tree;
	struct ocfs2_cow_context *context = NULL;

	FUNC0(!(oi->ip_dyn_features & OCFS2_HAS_REFCOUNT_FL));

	ret = FUNC13(inode, &di->id2.i_list,
					      cpos, write_len, max_cpos,
					      &cow_start, &cow_len);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	FUNC8(0, "CoW inode %lu, cpos %u, write_len %u, cow_start %u, "
	     "cow_len %u\n", inode->i_ino,
	     cpos, write_len, cow_start, cow_len);

	FUNC0(cow_len == 0);

	context = FUNC6(sizeof(struct ocfs2_cow_context), GFP_NOFS);
	if (!context) {
		ret = -ENOMEM;
		FUNC9(ret);
		goto out;
	}

	ret = FUNC12(osb, FUNC7(di->i_refcount_loc),
				       1, &ref_tree, &ref_root_bh);
	if (ret) {
		FUNC9(ret);
		goto out;
	}

	context->inode = inode;
	context->cow_start = cow_start;
	context->cow_len = cow_len;
	context->ref_tree = ref_tree;
	context->ref_root_bh = ref_root_bh;
	context->cow_duplicate_clusters = ocfs2_duplicate_clusters_by_page;
	context->get_clusters = ocfs2_di_get_clusters;

	FUNC11(&context->data_et,
				      FUNC1(inode), di_bh);

	ret = FUNC14(context);
	if (ret)
		FUNC9(ret);

	/*
	 * truncate the extent map here since no matter whether we meet with
	 * any error during the action, we shouldn't trust cached extent map
	 * any more.
	 */
	FUNC10(inode, cow_start);

	FUNC15(osb, ref_tree, 1);
	FUNC4(ref_root_bh);
out:
	FUNC5(context);
	return ret;
}