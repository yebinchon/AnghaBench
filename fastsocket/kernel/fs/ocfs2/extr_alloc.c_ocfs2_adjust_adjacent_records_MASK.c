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
typedef  scalar_t__ u32 ;
struct ocfs2_extent_rec {void* e_int_clusters; void* e_cpos; } ;
struct ocfs2_extent_list {int l_tree_depth; TYPE_1__* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct TYPE_2__ {void* e_cpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,scalar_t__) ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_extent_list*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct ocfs2_extent_rec *left_rec,
				  struct ocfs2_extent_list *left_child_el,
				  struct ocfs2_extent_rec *right_rec,
				  struct ocfs2_extent_list *right_child_el)
{
	u32 left_clusters, right_end;

	/*
	 * Interior nodes never have holes. Their cpos is the cpos of
	 * the leftmost record in their child list. Their cluster
	 * count covers the full theoretical range of their child list
	 * - the range between their cpos and the cpos of the record
	 * immediately to their right.
	 */
	left_clusters = FUNC4(right_child_el->l_recs[0].e_cpos);
	if (!FUNC5(right_child_el, &right_child_el->l_recs[0])) {
		FUNC0(right_child_el->l_tree_depth);
		FUNC0(FUNC2(right_child_el->l_next_free_rec) <= 1);
		left_clusters = FUNC4(right_child_el->l_recs[1].e_cpos);
	}
	left_clusters -= FUNC4(left_rec->e_cpos);
	left_rec->e_int_clusters = FUNC1(left_clusters);

	/*
	 * Calculate the rightmost cluster count boundary before
	 * moving cpos - we will need to adjust clusters after
	 * updating e_cpos to keep the same highest cluster count.
	 */
	right_end = FUNC4(right_rec->e_cpos);
	right_end += FUNC4(right_rec->e_int_clusters);

	right_rec->e_cpos = left_rec->e_cpos;
	FUNC3(&right_rec->e_cpos, left_clusters);

	right_end -= FUNC4(right_rec->e_cpos);
	right_rec->e_int_clusters = FUNC1(right_end);
}