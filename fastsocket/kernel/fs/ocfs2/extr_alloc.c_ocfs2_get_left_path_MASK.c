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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC6 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC7(struct ocfs2_extent_tree *et,
			       struct ocfs2_path *right_path,
			       struct ocfs2_path **ret_left_path)
{
	int ret;
	u32 left_cpos;
	struct ocfs2_path *left_path = NULL;

	*ret_left_path = NULL;

	/* This function shouldn't be called for non-trees. */
	FUNC0(right_path->p_tree_depth == 0);

	ret = FUNC2(FUNC5(et->et_ci),
					    right_path, &left_cpos);
	if (ret) {
		FUNC1(ret);
		goto out;
	}

	/* This function shouldn't be called for the leftmost leaf. */
	FUNC0(left_cpos == 0);

	left_path = FUNC6(right_path);
	if (!left_path) {
		ret = -ENOMEM;
		FUNC1(ret);
		goto out;
	}

	ret = FUNC3(et->et_ci, left_path, left_cpos);
	if (ret) {
		FUNC1(ret);
		goto out;
	}

	*ret_left_path = left_path;
out:
	if (ret)
		FUNC4(left_path);
	return ret;
}