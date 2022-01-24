#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct ocfs2_extent_tree {struct buffer_head* et_root_bh; int /*<<< orphan*/  et_ci; struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_list {void* l_next_free_rec; TYPE_1__* l_recs; void* l_tree_depth; } ;
struct ocfs2_extent_block {void* h_next_leaf_blk; int /*<<< orphan*/  h_blkno; struct ocfs2_extent_list h_list; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {void* e_int_clusters; void* e_cpos; void* e_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_extent_block*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 struct buffer_head** FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC9 (void**,int) ; 
 int FUNC10 (void*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int,struct ocfs2_alloc_context*,struct buffer_head**) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_extent_tree*,scalar_t__) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC22 (struct ocfs2_extent_list*) ; 

__attribute__((used)) static int FUNC23(handle_t *handle,
			    struct ocfs2_extent_tree *et,
			    struct buffer_head *eb_bh,
			    struct buffer_head **last_eb_bh,
			    struct ocfs2_alloc_context *meta_ac)
{
	int status, new_blocks, i;
	u64 next_blkno, new_last_eb_blk;
	struct buffer_head *bh;
	struct buffer_head **new_eb_bhs = NULL;
	struct ocfs2_extent_block *eb;
	struct ocfs2_extent_list  *eb_el;
	struct ocfs2_extent_list  *el;
	u32 new_cpos, root_end;

	FUNC13();

	FUNC0(!last_eb_bh || !*last_eb_bh);

	if (eb_bh) {
		eb = (struct ocfs2_extent_block *) eb_bh->b_data;
		el = &eb->h_list;
	} else
		el = et->et_root_el;

	/* we never add a branch to a leaf. */
	FUNC0(!el->l_tree_depth);

	new_blocks = FUNC10(el->l_tree_depth);

	eb = (struct ocfs2_extent_block *)(*last_eb_bh)->b_data;
	new_cpos = FUNC22(&eb->h_list);
	root_end = FUNC22(et->et_root_el);

	/*
	 * If there is a gap before the root end and the real end
	 * of the righmost leaf block, we need to remove the gap
	 * between new_cpos and root_end first so that the tree
	 * is consistent after we add a new branch(it will start
	 * from new_cpos).
	 */
	if (root_end > new_cpos) {
		FUNC12(0, "adjust the cluster end from %u to %u\n",
		     root_end, new_cpos);
		status = FUNC16(handle, et);
		if (status) {
			FUNC14(status);
			goto bail;
		}
	}

	/* allocate the number of new eb blocks we need */
	new_eb_bhs = FUNC7(new_blocks, sizeof(struct buffer_head *),
			     GFP_KERNEL);
	if (!new_eb_bhs) {
		status = -ENOMEM;
		FUNC14(status);
		goto bail;
	}

	status = FUNC17(handle, et, new_blocks,
					   meta_ac, new_eb_bhs);
	if (status < 0) {
		FUNC14(status);
		goto bail;
	}

	/* Note: new_eb_bhs[new_blocks - 1] is the guy which will be
	 * linked with the rest of the tree.
	 * conversly, new_eb_bhs[0] is the new bottommost leaf.
	 *
	 * when we leave the loop, new_last_eb_blk will point to the
	 * newest leaf, and next_blkno will point to the topmost extent
	 * block. */
	next_blkno = new_last_eb_blk = 0;
	for(i = 0; i < new_blocks; i++) {
		bh = new_eb_bhs[i];
		eb = (struct ocfs2_extent_block *) bh->b_data;
		/* ocfs2_create_new_meta_bhs() should create it right! */
		FUNC0(!FUNC1(eb));
		eb_el = &eb->h_list;

		status = FUNC20(handle, et->et_ci, bh,
						 OCFS2_JOURNAL_ACCESS_CREATE);
		if (status < 0) {
			FUNC14(status);
			goto bail;
		}

		eb->h_next_leaf_blk = 0;
		eb_el->l_tree_depth = FUNC3(i);
		eb_el->l_next_free_rec = FUNC3(1);
		/*
		 * This actually counts as an empty extent as
		 * c_clusters == 0
		 */
		eb_el->l_recs[0].e_cpos = FUNC4(new_cpos);
		eb_el->l_recs[0].e_blkno = FUNC5(next_blkno);
		/*
		 * eb_el isn't always an interior node, but even leaf
		 * nodes want a zero'd flags and reserved field so
		 * this gets the whole 32 bits regardless of use.
		 */
		eb_el->l_recs[0].e_int_clusters = FUNC4(0);
		if (!eb_el->l_tree_depth)
			new_last_eb_blk = FUNC11(eb->h_blkno);

		status = FUNC21(handle, bh);
		if (status < 0) {
			FUNC14(status);
			goto bail;
		}

		next_blkno = FUNC11(eb->h_blkno);
	}

	/* This is a bit hairy. We want to update up to three blocks
	 * here without leaving any of them in an inconsistent state
	 * in case of error. We don't have to worry about
	 * journal_dirty erroring as it won't unless we've aborted the
	 * handle (in which case we would never be here) so reserving
	 * the write with journal_access is all we need to do. */
	status = FUNC20(handle, et->et_ci, *last_eb_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC14(status);
		goto bail;
	}
	status = FUNC18(handle, et,
					      OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC14(status);
		goto bail;
	}
	if (eb_bh) {
		status = FUNC20(handle, et->et_ci, eb_bh,
						 OCFS2_JOURNAL_ACCESS_WRITE);
		if (status < 0) {
			FUNC14(status);
			goto bail;
		}
	}

	/* Link the new branch into the rest of the tree (el will
	 * either be on the root_bh, or the extent block passed in. */
	i = FUNC10(el->l_next_free_rec);
	el->l_recs[i].e_blkno = FUNC5(next_blkno);
	el->l_recs[i].e_cpos = FUNC4(new_cpos);
	el->l_recs[i].e_int_clusters = 0;
	FUNC9(&el->l_next_free_rec, 1);

	/* fe needs a new last extent block pointer, as does the
	 * next_leaf on the previously last-extent-block. */
	FUNC19(et, new_last_eb_blk);

	eb = (struct ocfs2_extent_block *) (*last_eb_bh)->b_data;
	eb->h_next_leaf_blk = FUNC5(new_last_eb_blk);

	status = FUNC21(handle, *last_eb_bh);
	if (status < 0)
		FUNC14(status);
	status = FUNC21(handle, et->et_root_bh);
	if (status < 0)
		FUNC14(status);
	if (eb_bh) {
		status = FUNC21(handle, eb_bh);
		if (status < 0)
			FUNC14(status);
	}

	/*
	 * Some callers want to track the rightmost leaf so pass it
	 * back here.
	 */
	FUNC2(*last_eb_bh);
	FUNC6(new_eb_bhs[0]);
	*last_eb_bh = new_eb_bhs[0];

	status = 0;
bail:
	if (new_eb_bhs) {
		for (i = 0; i < new_blocks; i++)
			FUNC2(new_eb_bhs[i]);
		FUNC8(new_eb_bhs);
	}

	FUNC15(status);
	return status;
}