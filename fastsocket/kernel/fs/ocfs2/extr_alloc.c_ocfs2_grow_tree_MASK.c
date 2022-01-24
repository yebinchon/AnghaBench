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
struct ocfs2_extent_tree {struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_tree_depth; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct buffer_head*,struct buffer_head**,struct ocfs2_alloc_context*) ; 
 int FUNC7 (struct ocfs2_extent_tree*,struct buffer_head**) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_alloc_context*,struct buffer_head**) ; 

__attribute__((used)) static int FUNC9(handle_t *handle, struct ocfs2_extent_tree *et,
			   int *final_depth, struct buffer_head **last_eb_bh,
			   struct ocfs2_alloc_context *meta_ac)
{
	int ret, shift;
	struct ocfs2_extent_list *el = et->et_root_el;
	int depth = FUNC3(el->l_tree_depth);
	struct buffer_head *bh = NULL;

	FUNC0(meta_ac == NULL);

	shift = FUNC7(et, &bh);
	if (shift < 0) {
		ret = shift;
		FUNC5(ret);
		goto out;
	}

	/* We traveled all the way to the bottom of the allocation tree
	 * and didn't find room for any more extents - we need to add
	 * another tree level */
	if (shift) {
		FUNC0(bh);
		FUNC4(0, "need to shift tree depth (current = %d)\n", depth);

		/* ocfs2_shift_tree_depth will return us a buffer with
		 * the new extent block (so we can pass that to
		 * ocfs2_add_branch). */
		ret = FUNC8(handle, et, meta_ac, &bh);
		if (ret < 0) {
			FUNC5(ret);
			goto out;
		}
		depth++;
		if (depth == 1) {
			/*
			 * Special case: we have room now if we shifted from
			 * tree_depth 0, so no more work needs to be done.
			 *
			 * We won't be calling add_branch, so pass
			 * back *last_eb_bh as the new leaf. At depth
			 * zero, it should always be null so there's
			 * no reason to brelse.
			 */
			FUNC0(*last_eb_bh);
			FUNC2(bh);
			*last_eb_bh = bh;
			goto out;
		}
	}

	/* call ocfs2_add_branch to add the final part of the tree with
	 * the new data. */
	FUNC4(0, "add branch. bh = %p\n", bh);
	ret = FUNC6(handle, et, bh, last_eb_bh,
			       meta_ac);
	if (ret < 0) {
		FUNC5(ret);
		goto out;
	}

out:
	if (final_depth)
		*final_depth = depth;
	FUNC1(bh);
	return ret;
}