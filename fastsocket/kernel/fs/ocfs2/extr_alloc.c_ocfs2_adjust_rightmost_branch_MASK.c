#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_next_free_rec; struct ocfs2_extent_rec* l_recs; } ;
struct TYPE_6__ {scalar_t__ h_buffer_credits; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_extent_rec*) ; 
 int FUNC3 (TYPE_1__*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ocfs2_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_path*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,struct ocfs2_path*) ; 
 struct ocfs2_path* FUNC7 (struct ocfs2_extent_tree*) ; 
 struct ocfs2_extent_list* FUNC8 (struct ocfs2_path*) ; 
 scalar_t__ FUNC9 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC10(handle_t *handle,
					 struct ocfs2_extent_tree *et)
{
	int status;
	struct ocfs2_path *path = NULL;
	struct ocfs2_extent_list *el;
	struct ocfs2_extent_rec *rec;

	path = FUNC7(et);
	if (!path) {
		status = -ENOMEM;
		return status;
	}

	status = FUNC4(et->et_ci, path, UINT_MAX);
	if (status < 0) {
		FUNC1(status);
		goto out;
	}

	status = FUNC3(handle, FUNC9(path) +
				    handle->h_buffer_credits);
	if (status < 0) {
		FUNC1(status);
		goto out;
	}

	status = FUNC6(et->et_ci, handle, path);
	if (status < 0) {
		FUNC1(status);
		goto out;
	}

	el = FUNC8(path);
	rec = &el->l_recs[FUNC0(el->l_next_free_rec) - 1];

	FUNC2(handle, et, path, rec);

out:
	FUNC5(path);
	return status;
}