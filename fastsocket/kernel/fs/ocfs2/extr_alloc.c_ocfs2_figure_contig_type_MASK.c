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
struct ocfs2_insert_type {int ins_contig_index; int ins_contig; } ;
struct ocfs2_extent_tree {unsigned int et_max_leaf_clusters; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_leaf_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; int /*<<< orphan*/  l_tree_depth; } ;
typedef  enum ocfs2_contig_type { ____Placeholder_ocfs2_contig_type } ocfs2_contig_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CONTIG_NONE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ; 

__attribute__((used)) static void FUNC3(struct ocfs2_extent_tree *et,
				     struct ocfs2_insert_type *insert,
				     struct ocfs2_extent_list *el,
				     struct ocfs2_extent_rec *insert_rec)
{
	int i;
	enum ocfs2_contig_type contig_type = CONTIG_NONE;

	FUNC0(FUNC1(el->l_tree_depth) != 0);

	for(i = 0; i < FUNC1(el->l_next_free_rec); i++) {
		contig_type = FUNC2(et, &el->l_recs[i],
						     insert_rec);
		if (contig_type != CONTIG_NONE) {
			insert->ins_contig_index = i;
			break;
		}
	}
	insert->ins_contig = contig_type;

	if (insert->ins_contig != CONTIG_NONE) {
		struct ocfs2_extent_rec *rec =
				&el->l_recs[insert->ins_contig_index];
		unsigned int len = FUNC1(rec->e_leaf_clusters) +
				   FUNC1(insert_rec->e_leaf_clusters);

		/*
		 * Caller might want us to limit the size of extents, don't
		 * calculate contiguousness if we might exceed that limit.
		 */
		if (et->et_max_leaf_clusters &&
		    (len > et->et_max_leaf_clusters))
			insert->ins_contig = CONTIG_NONE;
	}
}