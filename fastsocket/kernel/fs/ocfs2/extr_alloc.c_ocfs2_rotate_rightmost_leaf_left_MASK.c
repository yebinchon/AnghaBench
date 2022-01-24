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
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_list {int /*<<< orphan*/ * l_recs; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_extent_list*) ; 
 struct buffer_head* FUNC5 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC6 (struct ocfs2_path*) ; 
 scalar_t__ FUNC7 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC8(handle_t *handle,
					    struct ocfs2_extent_tree *et,
					    struct ocfs2_path *path)
{
	int ret;
	struct buffer_head *bh = FUNC5(path);
	struct ocfs2_extent_list *el = FUNC6(path);

	if (!FUNC1(&el->l_recs[0]))
		return 0;

	ret = FUNC3(handle, et->et_ci, path,
					   FUNC7(path) - 1);
	if (ret) {
		FUNC0(ret);
		goto out;
	}

	FUNC4(el);

	ret = FUNC2(handle, bh);
	if (ret)
		FUNC0(ret);

out:
	return ret;
}