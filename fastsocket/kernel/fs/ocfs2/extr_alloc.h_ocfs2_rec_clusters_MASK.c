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
struct ocfs2_extent_rec {int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_int_clusters; } ;
struct ocfs2_extent_list {scalar_t__ l_tree_depth; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct ocfs2_extent_list *el,
					      struct ocfs2_extent_rec *rec)
{
	/*
	 * Cluster count in extent records is slightly different
	 * between interior nodes and leaf nodes. This is to support
	 * unwritten extents which need a flags field in leaf node
	 * records, thus shrinking the available space for a clusters
	 * field.
	 */
	if (el->l_tree_depth)
		return FUNC1(rec->e_int_clusters);
	else
		return FUNC0(rec->e_leaf_clusters);
}