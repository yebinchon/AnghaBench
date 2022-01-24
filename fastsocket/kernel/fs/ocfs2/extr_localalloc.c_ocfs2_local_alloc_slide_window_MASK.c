#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  moves; } ;
struct ocfs2_super {TYPE_1__ alloc_stats; TYPE_2__* local_alloc_bh; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  b_size; scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_LA_EVENT_SLIDE ; 
 int /*<<< orphan*/  OCFS2_WINDOW_MOVE_CREDITS ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_dinode*) ; 
 struct ocfs2_dinode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_dinode*,struct ocfs2_dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_alloc_context*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC17 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*) ; 
 int FUNC18 (struct ocfs2_super*,struct ocfs2_alloc_context**,struct inode**,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_dinode*,struct inode*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC22(struct ocfs2_super *osb,
					  struct inode *local_alloc_inode)
{
	int status = 0;
	struct buffer_head *main_bm_bh = NULL;
	struct inode *main_bm_inode = NULL;
	handle_t *handle = NULL;
	struct ocfs2_dinode *alloc;
	struct ocfs2_dinode *alloc_copy = NULL;
	struct ocfs2_alloc_context *ac = NULL;

	FUNC9();

	FUNC19(osb, OCFS2_LA_EVENT_SLIDE);

	/* This will lock the main bitmap for us. */
	status = FUNC18(osb,
						      &ac,
						      &main_bm_inode,
						      &main_bm_bh);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC10(status);
		goto bail;
	}

	handle = FUNC20(osb, OCFS2_WINDOW_MOVE_CREDITS);
	if (FUNC1(handle)) {
		status = FUNC2(handle);
		handle = NULL;
		FUNC10(status);
		goto bail;
	}

	alloc = (struct ocfs2_dinode *) osb->local_alloc_bh->b_data;

	/* We want to clear the local alloc before doing anything
	 * else, so that if we error later during this operation,
	 * local alloc shutdown won't try to double free main bitmap
	 * bits. Make a copy so the sync function knows which bits to
	 * free. */
	alloc_copy = FUNC7(osb->local_alloc_bh->b_size, GFP_NOFS);
	if (!alloc_copy) {
		status = -ENOMEM;
		FUNC10(status);
		goto bail;
	}
	FUNC8(alloc_copy, alloc, osb->local_alloc_bh->b_size);

	status = FUNC15(handle,
					 FUNC0(local_alloc_inode),
					 osb->local_alloc_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	FUNC12(alloc);

	status = FUNC16(handle, osb->local_alloc_bh);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	status = FUNC21(osb, handle, alloc_copy,
					  main_bm_inode, main_bm_bh);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	status = FUNC17(osb, handle, ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC10(status);
		goto bail;
	}

	FUNC3(&osb->alloc_stats.moves);

	status = 0;
bail:
	if (handle)
		FUNC13(osb, handle);

	FUNC4(main_bm_bh);

	if (main_bm_inode)
		FUNC5(main_bm_inode);

	if (alloc_copy)
		FUNC6(alloc_copy);

	if (ac)
		FUNC14(ac);

	FUNC11(status);
	return status;
}