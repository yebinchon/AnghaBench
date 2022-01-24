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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_extent_tree {struct buffer_head* et_root_bh; int /*<<< orphan*/  et_ci; struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {scalar_t__ l_tree_depth; scalar_t__ l_next_free_rec; TYPE_1__* l_recs; } ;
struct ocfs2_extent_block {int /*<<< orphan*/  h_blkno; struct ocfs2_extent_list h_list; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  e_int_clusters; int /*<<< orphan*/  e_blkno; scalar_t__ e_cpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_extent_block*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int,struct ocfs2_alloc_context*,struct buffer_head**) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_extent_list*) ; 

__attribute__((used)) static int FUNC18(handle_t *handle,
				  struct ocfs2_extent_tree *et,
				  struct ocfs2_alloc_context *meta_ac,
				  struct buffer_head **ret_new_eb_bh)
{
	int status, i;
	u32 new_clusters;
	struct buffer_head *new_eb_bh = NULL;
	struct ocfs2_extent_block *eb;
	struct ocfs2_extent_list  *root_el;
	struct ocfs2_extent_list  *eb_el;

	FUNC9();

	status = FUNC12(handle, et, 1, meta_ac,
					   &new_eb_bh);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	eb = (struct ocfs2_extent_block *) new_eb_bh->b_data;
	/* ocfs2_create_new_meta_bhs() should create it right! */
	FUNC0(!FUNC1(eb));

	eb_el = &eb->h_list;
	root_el = et->et_root_el;

	status = FUNC15(handle, et->et_ci, new_eb_bh,
					 OCFS2_JOURNAL_ACCESS_CREATE);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	/* copy the root extent list data into the new extent block */
	eb_el->l_tree_depth = root_el->l_tree_depth;
	eb_el->l_next_free_rec = root_el->l_next_free_rec;
	for (i = 0; i < FUNC6(root_el->l_next_free_rec); i++)
		eb_el->l_recs[i] = root_el->l_recs[i];

	status = FUNC16(handle, new_eb_bh);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	status = FUNC13(handle, et,
					      OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	new_clusters = FUNC17(eb_el);

	/* update root_bh now */
	FUNC5(&root_el->l_tree_depth, 1);
	root_el->l_recs[0].e_cpos = 0;
	root_el->l_recs[0].e_blkno = eb->h_blkno;
	root_el->l_recs[0].e_int_clusters = FUNC4(new_clusters);
	for (i = 1; i < FUNC6(root_el->l_next_free_rec); i++)
		FUNC8(&root_el->l_recs[i], 0, sizeof(struct ocfs2_extent_rec));
	root_el->l_next_free_rec = FUNC3(1);

	/* If this is our 1st tree depth shift, then last_eb_blk
	 * becomes the allocated extent block */
	if (root_el->l_tree_depth == FUNC3(1))
		FUNC14(et, FUNC7(eb->h_blkno));

	status = FUNC16(handle, et->et_root_bh);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	*ret_new_eb_bh = new_eb_bh;
	new_eb_bh = NULL;
	status = 0;
bail:
	FUNC2(new_eb_bh);

	FUNC11(status);
	return status;
}