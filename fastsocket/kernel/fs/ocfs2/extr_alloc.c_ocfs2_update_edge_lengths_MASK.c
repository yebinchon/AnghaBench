#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ocfs2_path {int p_tree_depth; TYPE_1__* p_node; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; int /*<<< orphan*/  e_int_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_extent_block {unsigned long long h_next_leaf_blk; struct ocfs2_extent_list h_list; } ;
struct TYPE_9__ {scalar_t__ h_buffer_credits; } ;
typedef  TYPE_2__ handle_t ;
struct TYPE_10__ {scalar_t__ b_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  bh; struct ocfs2_extent_list* el; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (TYPE_2__*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ; 
 TYPE_3__* FUNC10 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC11(handle_t *handle,
				     struct ocfs2_extent_tree *et,
				     int subtree_index, struct ocfs2_path *path)
{
	int i, idx, ret;
	struct ocfs2_extent_rec *rec;
	struct ocfs2_extent_list *el;
	struct ocfs2_extent_block *eb;
	u32 range;

	/*
	 * In normal tree rotation process, we will never touch the
	 * tree branch above subtree_index and ocfs2_extend_rotate_transaction
	 * doesn't reserve the credits for them either.
	 *
	 * But we do have a special case here which will update the rightmost
	 * records for all the bh in the path.
	 * So we have to allocate extra credits and access them.
	 */
	ret = FUNC6(handle,
				 handle->h_buffer_credits + subtree_index);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	ret = FUNC7(et->et_ci, handle, path);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	/* Path should always be rightmost. */
	eb = (struct ocfs2_extent_block *)FUNC10(path)->b_data;
	FUNC0(eb->h_next_leaf_blk != 0ULL);

	el = &eb->h_list;
	FUNC0(FUNC2(el->l_next_free_rec) == 0);
	idx = FUNC2(el->l_next_free_rec) - 1;
	rec = &el->l_recs[idx];
	range = FUNC4(rec->e_cpos) + FUNC9(el, rec);

	for (i = 0; i < path->p_tree_depth; i++) {
		el = path->p_node[i].el;
		idx = FUNC2(el->l_next_free_rec) - 1;
		rec = &el->l_recs[idx];

		rec->e_int_clusters = FUNC1(range);
		FUNC3(&rec->e_int_clusters, -FUNC4(rec->e_cpos));

		FUNC8(handle, path->p_node[i].bh);
	}
out:
	return ret;
}