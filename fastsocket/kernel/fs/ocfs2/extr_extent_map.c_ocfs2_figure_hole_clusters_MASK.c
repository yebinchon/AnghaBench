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
struct ocfs2_extent_list {TYPE_1__* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; int /*<<< orphan*/  h_next_leaf_blk; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  e_cpos; } ;

/* Variables and functions */
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ocfs2_caching_info*,unsigned long long,struct buffer_head**) ; 
 int FUNC6 (struct ocfs2_extent_list*,scalar_t__) ; 

int FUNC7(struct ocfs2_caching_info *ci,
			       struct ocfs2_extent_list *el,
			       struct buffer_head *eb_bh,
			       u32 v_cluster,
			       u32 *num_clusters)
{
	int ret, i;
	struct buffer_head *next_eb_bh = NULL;
	struct ocfs2_extent_block *eb, *next_eb;

	i = FUNC6(el, v_cluster);

	if (i == FUNC1(el->l_next_free_rec) && eb_bh) {
		eb = (struct ocfs2_extent_block *)eb_bh->b_data;

		/*
		 * Check the next leaf for any extents.
		 */

		if (FUNC3(eb->h_next_leaf_blk) == 0ULL)
			goto no_more_extents;

		ret = FUNC5(ci,
					      FUNC3(eb->h_next_leaf_blk),
					      &next_eb_bh);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		next_eb = (struct ocfs2_extent_block *)next_eb_bh->b_data;
		el = &next_eb->h_list;
		i = FUNC6(el, v_cluster);
	}

no_more_extents:
	if (i == FUNC1(el->l_next_free_rec)) {
		/*
		 * We're at the end of our existing allocation. Just
		 * return the maximum number of clusters we could
		 * possibly allocate.
		 */
		*num_clusters = UINT_MAX - v_cluster;
	} else {
		*num_clusters = FUNC2(el->l_recs[i].e_cpos) - v_cluster;
	}

	ret = 0;
out:
	FUNC0(next_eb_bh);
	return ret;
}