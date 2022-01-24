#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct ocfs2_truncate_context {int /*<<< orphan*/  tc_dealloc; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; struct inode* osb_tl_inode; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_path {unsigned long long p_tree_depth; } ;
struct ocfs2_extent_list {TYPE_3__* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_list; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_refcount_loc; TYPE_1__ id2; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_9__ {scalar_t__ ip_clusters; int ip_dyn_features; scalar_t__ ip_blkno; } ;
struct TYPE_8__ {int e_flags; int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_cpos; } ;
struct TYPE_7__ {scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int OCFS2_EXT_REFCOUNTED ; 
 int OCFS2_HAS_REFCOUNT_FL ; 
 TYPE_5__* FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC5 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__,struct ocfs2_dinode*,struct ocfs2_extent_list*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC20 (struct ocfs2_super*,scalar_t__,struct inode*,struct buffer_head*,int /*<<< orphan*/ *,struct ocfs2_truncate_context*,struct ocfs2_path*,struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,scalar_t__) ; 
 int FUNC23 (int /*<<< orphan*/ ,struct ocfs2_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC25 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC26 (struct ocfs2_truncate_context*) ; 
 scalar_t__ FUNC27 (TYPE_3__*) ; 
 int /*<<< orphan*/  ocfs2_journal_access_di ; 
 int FUNC28 (struct ocfs2_super*,scalar_t__,int,struct ocfs2_refcount_tree**,int /*<<< orphan*/ *) ; 
 struct ocfs2_path* FUNC29 (struct buffer_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC30 (struct inode*,struct buffer_head*,scalar_t__,scalar_t__,int*,struct ocfs2_alloc_context**) ; 
 scalar_t__ FUNC31 (struct ocfs2_extent_list*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC32 (struct ocfs2_path*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/ * FUNC35 (struct ocfs2_super*,int) ; 
 scalar_t__ FUNC36 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC37 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 
 TYPE_2__* FUNC38 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC39 (struct ocfs2_path*) ; 

int FUNC40(struct ocfs2_super *osb,
			  struct inode *inode,
			  struct buffer_head *fe_bh,
			  struct ocfs2_truncate_context *tc)
{
	int status, i, credits, tl_sem = 0;
	u32 clusters_to_del, new_highest_cpos, range;
	u64 blkno = 0;
	struct ocfs2_extent_list *el;
	handle_t *handle = NULL;
	struct inode *tl_inode = osb->osb_tl_inode;
	struct ocfs2_path *path = NULL;
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)fe_bh->b_data;
	struct ocfs2_alloc_context *meta_ac = NULL;
	struct ocfs2_refcount_tree *ref_tree = NULL;

	FUNC11();

	new_highest_cpos = FUNC17(osb->sb,
						     FUNC6(inode));

	path = FUNC29(fe_bh, &di->id2.i_list,
			      ocfs2_journal_access_di);
	if (!path) {
		status = -ENOMEM;
		FUNC12(status);
		goto bail;
	}

	FUNC22(inode, new_highest_cpos);

start:
	/*
	 * Check that we still have allocation to delete.
	 */
	if (FUNC3(inode)->ip_clusters == 0) {
		status = 0;
		goto bail;
	}

	credits = 0;

	/*
	 * Truncate always works against the rightmost tree branch.
	 */
	status = FUNC23(FUNC1(inode), path, UINT_MAX);
	if (status) {
		FUNC12(status);
		goto bail;
	}

	FUNC10(0, "inode->ip_clusters = %u, tree_depth = %u\n",
	     FUNC3(inode)->ip_clusters, path->p_tree_depth);

	/*
	 * By now, el will point to the extent list on the bottom most
	 * portion of this tree. Only the tail record is considered in
	 * each pass.
	 *
	 * We handle the following cases, in order:
	 * - empty extent: delete the remaining branch
	 * - remove the entire record
	 * - remove a partial record
	 * - no record needs to be removed (truncate has completed)
	 */
	el = FUNC39(path);
	if (FUNC7(el->l_next_free_rec) == 0) {
		FUNC21(inode->i_sb,
			    "Inode %llu has empty extent block at %llu\n",
			    (unsigned long long)FUNC3(inode)->ip_blkno,
			    (unsigned long long)FUNC38(path)->b_blocknr);
		status = -EROFS;
		goto bail;
	}

	i = FUNC7(el->l_next_free_rec) - 1;
	range = FUNC8(el->l_recs[i].e_cpos) +
		FUNC31(el, &el->l_recs[i]);
	if (i == 0 && FUNC27(&el->l_recs[i])) {
		clusters_to_del = 0;
	} else if (FUNC8(el->l_recs[i].e_cpos) >= new_highest_cpos) {
		clusters_to_del = FUNC31(el, &el->l_recs[i]);
		blkno = FUNC9(el->l_recs[i].e_blkno);
	} else if (range > new_highest_cpos) {
		clusters_to_del = (FUNC31(el, &el->l_recs[i]) +
				   FUNC8(el->l_recs[i].e_cpos)) -
				  new_highest_cpos;
		blkno = FUNC9(el->l_recs[i].e_blkno) +
			FUNC18(inode->i_sb,
				FUNC31(el, &el->l_recs[i]) -
				clusters_to_del);
	} else {
		status = 0;
		goto bail;
	}

	FUNC10(0, "clusters_to_del = %u in this pass, tail blk=%llu\n",
	     clusters_to_del, (unsigned long long)FUNC38(path)->b_blocknr);

	if (el->l_recs[i].e_flags & OCFS2_EXT_REFCOUNTED && clusters_to_del) {
		FUNC0(!(FUNC3(inode)->ip_dyn_features &
			 OCFS2_HAS_REFCOUNT_FL));

		status = FUNC28(osb,
						FUNC9(di->i_refcount_loc),
						1, &ref_tree, NULL);
		if (status) {
			FUNC12(status);
			goto bail;
		}

		status = FUNC30(inode, fe_bh,
							       blkno,
							       clusters_to_del,
							       &credits,
							       &meta_ac);
		if (status < 0) {
			FUNC12(status);
			goto bail;
		}
	}

	FUNC14(&tl_inode->i_mutex);
	tl_sem = 1;
	/* ocfs2_truncate_log_needs_flush guarantees us at least one
	 * record is free for use. If there isn't any, we flush to get
	 * an empty truncate log.  */
	if (FUNC36(osb)) {
		status = FUNC5(osb);
		if (status < 0) {
			FUNC12(status);
			goto bail;
		}
	}

	credits += FUNC16(osb->sb, clusters_to_del,
						(struct ocfs2_dinode *)fe_bh->b_data,
						el);
	handle = FUNC35(osb, credits);
	if (FUNC2(handle)) {
		status = FUNC4(handle);
		handle = NULL;
		FUNC12(status);
		goto bail;
	}

	status = FUNC20(osb, clusters_to_del, inode, fe_bh, handle,
				   tc, path, meta_ac);
	if (status < 0) {
		FUNC12(status);
		goto bail;
	}

	FUNC15(&tl_inode->i_mutex);
	tl_sem = 0;

	FUNC19(osb, handle);
	handle = NULL;

	FUNC32(path, 1);

	if (meta_ac) {
		FUNC24(meta_ac);
		meta_ac = NULL;
	}

	if (ref_tree) {
		FUNC37(osb, ref_tree, 1);
		ref_tree = NULL;
	}

	/*
	 * The check above will catch the case where we've truncated
	 * away all allocation.
	 */
	goto start;

bail:

	FUNC34(osb, 1);

	if (tl_sem)
		FUNC15(&tl_inode->i_mutex);

	if (handle)
		FUNC19(osb, handle);

	if (meta_ac)
		FUNC24(meta_ac);

	if (ref_tree)
		FUNC37(osb, ref_tree, 1);

	FUNC33(osb, &tc->tc_dealloc);

	FUNC25(path);

	/* This will drop the ext_alloc cluster lock for us */
	FUNC26(tc);

	FUNC13(status);
	return status;
}