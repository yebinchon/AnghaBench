#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_next_free_rec; int /*<<< orphan*/ * l_recs; } ;
struct ocfs2_extent_block {scalar_t__ h_next_leaf_blk; int /*<<< orphan*/  h_blkno; struct ocfs2_extent_list h_list; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct TYPE_7__ {int h_buffer_credits; } ;
typedef  TYPE_1__ handle_t ;
struct TYPE_8__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int FUNC0 (TYPE_1__*,struct ocfs2_extent_tree*,int,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*,struct ocfs2_path**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC10 (TYPE_1__*,struct ocfs2_extent_tree*,struct ocfs2_path*) ; 
 TYPE_2__* FUNC11 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC12 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC13(handle_t *handle,
				  struct ocfs2_extent_tree *et,
				  struct ocfs2_path *path,
				  struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret, orig_credits = handle->h_buffer_credits;
	struct ocfs2_path *tmp_path = NULL, *restart_path = NULL;
	struct ocfs2_extent_block *eb;
	struct ocfs2_extent_list *el;

	el = FUNC12(path);
	if (!FUNC6(&el->l_recs[0]))
		return 0;

	if (path->p_tree_depth == 0) {
rightmost_no_delete:
		/*
		 * Inline extents. This is trivially handled, so do
		 * it up front.
		 */
		ret = FUNC10(handle, et, path);
		if (ret)
			FUNC3(ret);
		goto out;
	}

	/*
	 * Handle rightmost branch now. There's several cases:
	 *  1) simple rotation leaving records in there. That's trivial.
	 *  2) rotation requiring a branch delete - there's no more
	 *     records left. Two cases of this:
	 *     a) There are branches to the left.
	 *     b) This is also the leftmost (the only) branch.
	 *
	 *  1) is handled via ocfs2_rotate_rightmost_leaf_left()
	 *  2a) we need the left branch so that we can update it with the unlink
	 *  2b) we need to bring the root back to inline extents.
	 */

	eb = (struct ocfs2_extent_block *)FUNC11(path)->b_data;
	el = &eb->h_list;
	if (eb->h_next_leaf_blk == 0) {
		/*
		 * This gets a bit tricky if we're going to delete the
		 * rightmost path. Get the other cases out of the way
		 * 1st.
		 */
		if (FUNC1(el->l_next_free_rec) > 1)
			goto rightmost_no_delete;

		if (FUNC1(el->l_next_free_rec) == 0) {
			ret = -EIO;
			FUNC4(FUNC7(et->et_ci),
				    "Owner %llu has empty extent block at %llu",
				    (unsigned long long)FUNC8(et->et_ci),
				    (unsigned long long)FUNC2(eb->h_blkno));
			goto out;
		}

		/*
		 * XXX: The caller can not trust "path" any more after
		 * this as it will have been deleted. What do we do?
		 *
		 * In theory the rotate-for-merge code will never get
		 * here because it'll always ask for a rotate in a
		 * nonempty list.
		 */

		ret = FUNC9(handle, et, path,
						  dealloc);
		if (ret)
			FUNC3(ret);
		goto out;
	}

	/*
	 * Now we can loop, remembering the path we get from -EAGAIN
	 * and restarting from there.
	 */
try_rotate:
	ret = FUNC0(handle, et, orig_credits, path,
				       dealloc, &restart_path);
	if (ret && ret != -EAGAIN) {
		FUNC3(ret);
		goto out;
	}

	while (ret == -EAGAIN) {
		tmp_path = restart_path;
		restart_path = NULL;

		ret = FUNC0(handle, et, orig_credits,
					       tmp_path, dealloc,
					       &restart_path);
		if (ret && ret != -EAGAIN) {
			FUNC3(ret);
			goto out;
		}

		FUNC5(tmp_path);
		tmp_path = NULL;

		if (ret == 0)
			goto try_rotate;
	}

out:
	FUNC5(tmp_path);
	FUNC5(restart_path);
	return ret;
}