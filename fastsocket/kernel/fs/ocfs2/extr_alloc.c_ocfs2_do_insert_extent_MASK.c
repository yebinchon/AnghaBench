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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_insert_type {scalar_t__ ins_appending; scalar_t__ ins_contig; scalar_t__ ins_split; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_root_bh; int /*<<< orphan*/  et_ci; struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_tree_depth; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ APPEND_NONE ; 
 scalar_t__ APPEND_TAIL ; 
 scalar_t__ CONTIG_LEFT ; 
 scalar_t__ CONTIG_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 scalar_t__ SPLIT_NONE ; 
 int /*<<< orphan*/  UINT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_path*,struct ocfs2_path**) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_extent_tree*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ocfs2_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_extent_list*,struct ocfs2_insert_type*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*,struct ocfs2_extent_rec*,struct ocfs2_insert_type*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC11 (struct ocfs2_extent_tree*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,scalar_t__,int /*<<< orphan*/ ,struct ocfs2_path*,struct ocfs2_path**) ; 

__attribute__((used)) static int FUNC13(handle_t *handle,
				  struct ocfs2_extent_tree *et,
				  struct ocfs2_extent_rec *insert_rec,
				  struct ocfs2_insert_type *type)
{
	int ret, rotate = 0;
	u32 cpos;
	struct ocfs2_path *right_path = NULL;
	struct ocfs2_path *left_path = NULL;
	struct ocfs2_extent_list *el;

	el = et->et_root_el;

	ret = FUNC4(handle, et,
					   OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	if (FUNC0(el->l_tree_depth) == 0) {
		FUNC8(et, insert_rec, el, type);
		goto out_update_clusters;
	}

	right_path = FUNC11(et);
	if (!right_path) {
		ret = -ENOMEM;
		FUNC2(ret);
		goto out;
	}

	/*
	 * Determine the path to start with. Rotations need the
	 * rightmost path, everything else can go directly to the
	 * target leaf.
	 */
	cpos = FUNC1(insert_rec->e_cpos);
	if (type->ins_appending == APPEND_NONE &&
	    type->ins_contig == CONTIG_NONE) {
		rotate = 1;
		cpos = UINT_MAX;
	}

	ret = FUNC6(et->et_ci, right_path, cpos);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	/*
	 * Rotations and appends need special treatment - they modify
	 * parts of the tree's above them.
	 *
	 * Both might pass back a path immediate to the left of the
	 * one being inserted to. This will be cause
	 * ocfs2_insert_path() to modify the rightmost records of
	 * left_path to account for an edge insert.
	 *
	 * XXX: When modifying this code, keep in mind that an insert
	 * can wind up skipping both of these two special cases...
	 */
	if (rotate) {
		ret = FUNC12(handle, et, type->ins_split,
					      FUNC1(insert_rec->e_cpos),
					      right_path, &left_path);
		if (ret) {
			FUNC2(ret);
			goto out;
		}

		/*
		 * ocfs2_rotate_tree_right() might have extended the
		 * transaction without re-journaling our tree root.
		 */
		ret = FUNC4(handle, et,
						   OCFS2_JOURNAL_ACCESS_WRITE);
		if (ret) {
			FUNC2(ret);
			goto out;
		}
	} else if (type->ins_appending == APPEND_TAIL
		   && type->ins_contig != CONTIG_LEFT) {
		ret = FUNC3(handle, et, insert_rec,
					       right_path, &left_path);
		if (ret) {
			FUNC2(ret);
			goto out;
		}
	}

	ret = FUNC9(handle, et, left_path, right_path,
				insert_rec, type);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

out_update_clusters:
	if (type->ins_split == SPLIT_NONE)
		FUNC5(et,
					 FUNC0(insert_rec->e_leaf_clusters));

	ret = FUNC10(handle, et->et_root_bh);
	if (ret)
		FUNC2(ret);

out:
	FUNC7(left_path);
	FUNC7(right_path);

	return ret;
}