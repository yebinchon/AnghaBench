#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ocfs2_path {int /*<<< orphan*/  p_tree_depth; TYPE_2__* p_node; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int /*<<< orphan*/ * l_recs; } ;
struct TYPE_5__ {TYPE_1__* bh; } ;
struct TYPE_4__ {scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_path*,struct ocfs2_path*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,struct ocfs2_path*) ; 
 int FUNC5 (struct super_block*,struct ocfs2_path*,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__) ; 
 int FUNC7 (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct super_block* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_path*,struct ocfs2_path*) ; 
 struct ocfs2_path* FUNC12 (struct ocfs2_path*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocfs2_path*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*,int,struct ocfs2_cached_dealloc_ctxt*,int*) ; 
 TYPE_3__* FUNC15 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC16(handle_t *handle,
				    struct ocfs2_extent_tree *et,
				    int orig_credits,
				    struct ocfs2_path *path,
				    struct ocfs2_cached_dealloc_ctxt *dealloc,
				    struct ocfs2_path **empty_extent_path)
{
	int ret, subtree_root, deleted;
	u32 right_cpos;
	struct ocfs2_path *left_path = NULL;
	struct ocfs2_path *right_path = NULL;
	struct super_block *sb = FUNC10(et->et_ci);

	FUNC0(!FUNC9(&(FUNC15(path)->l_recs[0])));

	*empty_extent_path = NULL;

	ret = FUNC5(sb, path, &right_cpos);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	left_path = FUNC12(path);
	if (!left_path) {
		ret = -ENOMEM;
		FUNC2(ret);
		goto out;
	}

	FUNC3(left_path, path);

	right_path = FUNC12(path);
	if (!right_path) {
		ret = -ENOMEM;
		FUNC2(ret);
		goto out;
	}

	while (right_cpos) {
		ret = FUNC6(et->et_ci, right_path, right_cpos);
		if (ret) {
			FUNC2(ret);
			goto out;
		}

		subtree_root = FUNC7(et, left_path,
						       right_path);

		FUNC1(0, "Subtree root at index %d (blk %llu, depth %d)\n",
		     subtree_root,
		     (unsigned long long)
		     right_path->p_node[subtree_root].bh->b_blocknr,
		     right_path->p_tree_depth);

		ret = FUNC4(handle, subtree_root,
						      orig_credits, left_path);
		if (ret) {
			FUNC2(ret);
			goto out;
		}

		/*
		 * Caller might still want to make changes to the
		 * tree root, so re-add it to the journal here.
		 */
		ret = FUNC13(handle, et->et_ci,
						   left_path, 0);
		if (ret) {
			FUNC2(ret);
			goto out;
		}

		ret = FUNC14(handle, et, left_path,
						right_path, subtree_root,
						dealloc, &deleted);
		if (ret == -EAGAIN) {
			/*
			 * The rotation has to temporarily stop due to
			 * the right subtree having an empty
			 * extent. Pass it back to the caller for a
			 * fixup.
			 */
			*empty_extent_path = right_path;
			right_path = NULL;
			goto out;
		}
		if (ret) {
			FUNC2(ret);
			goto out;
		}

		/*
		 * The subtree rotate might have removed records on
		 * the rightmost edge. If so, then rotation is
		 * complete.
		 */
		if (deleted)
			break;

		FUNC11(left_path, right_path);

		ret = FUNC5(sb, left_path,
						     &right_cpos);
		if (ret) {
			FUNC2(ret);
			goto out;
		}
	}

out:
	FUNC8(right_path);
	FUNC8(left_path);

	return ret;
}