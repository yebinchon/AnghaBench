#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_insert_type {scalar_t__ ins_split; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_7__ {int h_buffer_credits; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 scalar_t__ SPLIT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct ocfs2_path*,struct ocfs2_path*,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,int /*<<< orphan*/ ,struct ocfs2_insert_type*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,struct ocfs2_path*) ; 
 int FUNC6 (TYPE_1__*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*,struct ocfs2_extent_rec*,scalar_t__) ; 
 struct buffer_head* FUNC8 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC10(handle_t *handle,
			     struct ocfs2_extent_tree *et,
			     struct ocfs2_path *left_path,
			     struct ocfs2_path *right_path,
			     struct ocfs2_extent_rec *insert_rec,
			     struct ocfs2_insert_type *insert)
{
	int ret, subtree_index;
	struct buffer_head *leaf_bh = FUNC8(right_path);

	if (left_path) {
		int credits = handle->h_buffer_credits;

		/*
		 * There's a chance that left_path got passed back to
		 * us without being accounted for in the
		 * journal. Extend our transaction here to be sure we
		 * can change those blocks.
		 */
		credits += left_path->p_tree_depth;

		ret = FUNC2(handle, credits);
		if (ret < 0) {
			FUNC0(ret);
			goto out;
		}

		ret = FUNC5(et->et_ci, handle, left_path);
		if (ret < 0) {
			FUNC0(ret);
			goto out;
		}
	}

	/*
	 * Pass both paths to the journal. The majority of inserts
	 * will be touching all components anyway.
	 */
	ret = FUNC5(et->et_ci, handle, right_path);
	if (ret < 0) {
		FUNC0(ret);
		goto out;
	}

	if (insert->ins_split != SPLIT_NONE) {
		/*
		 * We could call ocfs2_insert_at_leaf() for some types
		 * of splits, but it's easier to just let one separate
		 * function sort it all out.
		 */
		FUNC7(et, left_path, right_path,
				   insert_rec, insert->ins_split);

		/*
		 * Split might have modified either leaf and we don't
		 * have a guarantee that the later edge insert will
		 * dirty this for us.
		 */
		if (left_path)
			ret = FUNC6(handle,
						  FUNC8(left_path));
			if (ret)
				FUNC0(ret);
	} else
		FUNC4(et, insert_rec, FUNC9(right_path),
				     insert);

	ret = FUNC6(handle, leaf_bh);
	if (ret)
		FUNC0(ret);

	if (left_path) {
		/*
		 * The rotate code has indicated that we need to fix
		 * up portions of the tree after the insert.
		 *
		 * XXX: Should we extend the transaction here?
		 */
		subtree_index = FUNC3(et, left_path,
							right_path);
		FUNC1(handle, left_path, right_path,
					   subtree_index);
	}

	ret = 0;
out:
	return ret;
}