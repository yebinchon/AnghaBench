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
struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {int /*<<< orphan*/ * l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_extent_rec*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_path*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC12 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC13 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC14(handle_t *handle,
				    struct ocfs2_extent_tree *et,
				    struct ocfs2_extent_rec *insert_rec,
				    struct ocfs2_path *right_path,
				    struct ocfs2_path **ret_left_path)
{
	int ret, next_free;
	struct ocfs2_extent_list *el;
	struct ocfs2_path *left_path = NULL;

	*ret_left_path = NULL;

	/*
	 * This shouldn't happen for non-trees. The extent rec cluster
	 * count manipulation below only works for interior nodes.
	 */
	FUNC0(right_path->p_tree_depth == 0);

	/*
	 * If our appending insert is at the leftmost edge of a leaf,
	 * then we might need to update the rightmost records of the
	 * neighboring path.
	 */
	el = FUNC13(right_path);
	next_free = FUNC1(el->l_next_free_rec);
	if (next_free == 0 ||
	    (next_free == 1 && FUNC9(&el->l_recs[0]))) {
		u32 left_cpos;

		ret = FUNC6(FUNC11(et->et_ci),
						    right_path, &left_cpos);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		FUNC3(0, "Append may need a left path update. cpos: %u, "
		     "left_cpos: %u\n", FUNC2(insert_rec->e_cpos),
		     left_cpos);

		/*
		 * No need to worry if the append is already in the
		 * leftmost leaf.
		 */
		if (left_cpos) {
			left_path = FUNC12(right_path);
			if (!left_path) {
				ret = -ENOMEM;
				FUNC4(ret);
				goto out;
			}

			ret = FUNC7(et->et_ci, left_path,
					      left_cpos);
			if (ret) {
				FUNC4(ret);
				goto out;
			}

			/*
			 * ocfs2_insert_path() will pass the left_path to the
			 * journal for us.
			 */
		}
	}

	ret = FUNC10(et->et_ci, handle, right_path);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	FUNC5(handle, et, right_path, insert_rec);

	*ret_left_path = left_path;
	ret = 0;
out:
	if (ret != 0)
		FUNC8(left_path);

	return ret;
}