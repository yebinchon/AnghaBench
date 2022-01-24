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
struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_merge_ctxt {scalar_t__ c_contig_type; int c_split_covers_rec; int /*<<< orphan*/  c_has_empty_extent; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {scalar_t__ e_cpos; scalar_t__ e_leaf_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ CONTIG_NONE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_extent_tree*) ; 
 scalar_t__ FUNC7 (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_extent_list*,int,struct ocfs2_extent_rec*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_extent_rec*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_extent_list*,int,struct ocfs2_extent_rec*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct buffer_head**,int,struct ocfs2_extent_rec*,struct ocfs2_alloc_context*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,int,struct ocfs2_extent_rec*,struct ocfs2_cached_dealloc_ctxt*,struct ocfs2_merge_ctxt*) ; 
 struct ocfs2_extent_list* FUNC13 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC14 (struct ocfs2_path*) ; 

int FUNC15(handle_t *handle,
		       struct ocfs2_extent_tree *et,
		       struct ocfs2_path *path,
		       int split_index,
		       struct ocfs2_extent_rec *split_rec,
		       struct ocfs2_alloc_context *meta_ac,
		       struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret = 0;
	struct ocfs2_extent_list *el = FUNC13(path);
	struct buffer_head *last_eb_bh = NULL;
	struct ocfs2_extent_rec *rec = &el->l_recs[split_index];
	struct ocfs2_merge_ctxt ctxt;
	struct ocfs2_extent_list *rightmost_el;

	if (FUNC2(rec->e_cpos) > FUNC2(split_rec->e_cpos) ||
	    ((FUNC2(rec->e_cpos) + FUNC1(rec->e_leaf_clusters)) <
	     (FUNC2(split_rec->e_cpos) + FUNC1(split_rec->e_leaf_clusters)))) {
		ret = -EIO;
		FUNC4(ret);
		goto out;
	}

	ctxt.c_contig_type = FUNC7(et, path, el,
							    split_index,
							    split_rec);

	/*
	 * The core merge / split code wants to know how much room is
	 * left in this allocation tree, so we pass the
	 * rightmost extent list.
	 */
	if (path->p_tree_depth) {
		struct ocfs2_extent_block *eb;

		ret = FUNC9(et->et_ci,
					      FUNC6(et),
					      &last_eb_bh);
		if (ret) {
			FUNC5(ret);
			goto out;
		}

		eb = (struct ocfs2_extent_block *) last_eb_bh->b_data;
		rightmost_el = &eb->h_list;
	} else
		rightmost_el = FUNC14(path);

	if (rec->e_cpos == split_rec->e_cpos &&
	    rec->e_leaf_clusters == split_rec->e_leaf_clusters)
		ctxt.c_split_covers_rec = 1;
	else
		ctxt.c_split_covers_rec = 0;

	ctxt.c_has_empty_extent = FUNC8(&el->l_recs[0]);

	FUNC3(0, "index: %d, contig: %u, has_empty: %u, split_covers: %u\n",
	     split_index, ctxt.c_contig_type, ctxt.c_has_empty_extent,
	     ctxt.c_split_covers_rec);

	if (ctxt.c_contig_type == CONTIG_NONE) {
		if (ctxt.c_split_covers_rec)
			ret = FUNC10(handle, et, path, el,
						       split_index, split_rec);
		else
			ret = FUNC11(handle, et, path,
						     &last_eb_bh, split_index,
						     split_rec, meta_ac);
		if (ret)
			FUNC4(ret);
	} else {
		ret = FUNC12(handle, et, path,
						split_index, split_rec,
						dealloc, &ctxt);
		if (ret)
			FUNC4(ret);
	}

out:
	FUNC0(last_eb_bh);
	return ret;
}