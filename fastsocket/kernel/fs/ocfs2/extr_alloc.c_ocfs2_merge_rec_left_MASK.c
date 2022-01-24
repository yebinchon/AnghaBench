#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_path {TYPE_1__* p_node; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_next_free_rec; struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_count; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  h_buffer_credits; } ;
typedef  TYPE_2__ handle_t ;
struct TYPE_9__ {struct buffer_head* bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_extent_list*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct ocfs2_path*,struct ocfs2_path*,int) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,struct ocfs2_path*) ; 
 int FUNC11 (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_path*) ; 
 int FUNC13 (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path**) ; 
 scalar_t__ FUNC14 (struct ocfs2_extent_rec*) ; 
 int FUNC15 (TYPE_2__*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_path*,struct ocfs2_path*) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,struct ocfs2_path*,int) ; 
 int FUNC19 (TYPE_2__*,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*) ; 
 struct buffer_head* FUNC20 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC21 (struct ocfs2_path*) ; 
 int FUNC22 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC23(struct ocfs2_path *right_path,
				handle_t *handle,
				struct ocfs2_extent_tree *et,
				struct ocfs2_extent_rec *split_rec,
				struct ocfs2_cached_dealloc_ctxt *dealloc,
				int index)
{
	int ret, i, subtree_index = 0, has_empty_extent = 0;
	unsigned int split_clusters = FUNC2(split_rec->e_leaf_clusters);
	struct ocfs2_extent_rec *left_rec;
	struct ocfs2_extent_rec *right_rec;
	struct ocfs2_extent_list *el = FUNC21(right_path);
	struct buffer_head *bh = FUNC20(right_path);
	struct buffer_head *root_bh = NULL;
	struct ocfs2_path *left_path = NULL;
	struct ocfs2_extent_list *left_el;

	FUNC0(index < 0);

	right_rec = &el->l_recs[index];
	if (index == 0) {
		/* we meet with a cross extent block merge. */
		ret = FUNC13(et, right_path, &left_path);
		if (ret) {
			FUNC6(ret);
			goto out;
		}

		left_el = FUNC21(left_path);
		FUNC0(FUNC2(left_el->l_next_free_rec) !=
		       FUNC2(left_el->l_count));

		left_rec = &left_el->l_recs[
				FUNC2(left_el->l_next_free_rec) - 1];
		FUNC0(FUNC4(left_rec->e_cpos) +
		       FUNC2(left_rec->e_leaf_clusters) !=
		       FUNC4(split_rec->e_cpos));

		subtree_index = FUNC11(et, left_path,
							right_path);

		ret = FUNC10(handle, subtree_index,
						      handle->h_buffer_credits,
						      left_path);
		if (ret) {
			FUNC6(ret);
			goto out;
		}

		root_bh = left_path->p_node[subtree_index].bh;
		FUNC0(root_bh != right_path->p_node[subtree_index].bh);

		ret = FUNC18(handle, et->et_ci, right_path,
						   subtree_index);
		if (ret) {
			FUNC6(ret);
			goto out;
		}

		for (i = subtree_index + 1;
		     i < FUNC22(right_path); i++) {
			ret = FUNC18(handle, et->et_ci,
							   right_path, i);
			if (ret) {
				FUNC6(ret);
				goto out;
			}

			ret = FUNC18(handle, et->et_ci,
							   left_path, i);
			if (ret) {
				FUNC6(ret);
				goto out;
			}
		}
	} else {
		left_rec = &el->l_recs[index - 1];
		if (FUNC14(&el->l_recs[0]))
			has_empty_extent = 1;
	}

	ret = FUNC18(handle, et->et_ci, right_path,
					   FUNC22(right_path) - 1);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	if (has_empty_extent && index == 1) {
		/*
		 * The easy case - we can just plop the record right in.
		 */
		*left_rec = *split_rec;

		has_empty_extent = 0;
	} else
		FUNC1(&left_rec->e_leaf_clusters, split_clusters);

	FUNC3(&right_rec->e_cpos, split_clusters);
	FUNC5(&right_rec->e_blkno,
		     FUNC8(FUNC16(et->et_ci),
					      split_clusters));
	FUNC1(&right_rec->e_leaf_clusters, -split_clusters);

	FUNC7(el, index);

	ret = FUNC15(handle, bh);
	if (ret)
		FUNC6(ret);

	if (left_path) {
		ret = FUNC15(handle, FUNC20(left_path));
		if (ret)
			FUNC6(ret);

		/*
		 * In the situation that the right_rec is empty and the extent
		 * block is empty also,  ocfs2_complete_edge_insert can't handle
		 * it and we need to delete the right extent block.
		 */
		if (FUNC2(right_rec->e_leaf_clusters) == 0 &&
		    FUNC2(el->l_next_free_rec) == 1) {

			ret = FUNC19(handle, et,
							  right_path,
							  dealloc);
			if (ret) {
				FUNC6(ret);
				goto out;
			}

			/* Now the rightmost extent block has been deleted.
			 * So we use the new rightmost path.
			 */
			FUNC17(right_path, left_path);
			left_path = NULL;
		} else
			FUNC9(handle, left_path,
						   right_path, subtree_index);
	}
out:
	if (left_path)
		FUNC12(left_path);
	return ret;
}