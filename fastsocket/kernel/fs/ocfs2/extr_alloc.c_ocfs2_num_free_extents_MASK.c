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
typedef  scalar_t__ u64 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_list {scalar_t__ l_tree_depth; int /*<<< orphan*/  l_next_free_rec; int /*<<< orphan*/  l_count; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct ocfs2_extent_tree*) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,struct buffer_head**) ; 

int FUNC8(struct ocfs2_super *osb,
			   struct ocfs2_extent_tree *et)
{
	int retval;
	struct ocfs2_extent_list *el = NULL;
	struct ocfs2_extent_block *eb;
	struct buffer_head *eb_bh = NULL;
	u64 last_eb_blk = 0;

	FUNC3();

	el = et->et_root_el;
	last_eb_blk = FUNC6(et);

	if (last_eb_blk) {
		retval = FUNC7(et->et_ci, last_eb_blk,
						 &eb_bh);
		if (retval < 0) {
			FUNC4(retval);
			goto bail;
		}
		eb = (struct ocfs2_extent_block *) eb_bh->b_data;
		el = &eb->h_list;
	}

	FUNC0(el->l_tree_depth != 0);

	retval = FUNC2(el->l_count) - FUNC2(el->l_next_free_rec);
bail:
	FUNC1(eb_bh);

	FUNC5(retval);
	return retval;
}