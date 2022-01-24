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
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; TYPE_1__* et_ops; } ;
struct ocfs2_extent_rec {int dummy; } ;
typedef  enum ocfs2_contig_type { ____Placeholder_ocfs2_contig_type } ocfs2_contig_type ;
struct TYPE_2__ {int (* eo_extent_contig ) (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ; 

__attribute__((used)) static inline enum ocfs2_contig_type
	FUNC3(struct ocfs2_extent_tree *et,
			       struct ocfs2_extent_rec *rec,
			       struct ocfs2_extent_rec *insert_rec)
{
	if (et->et_ops->eo_extent_contig)
		return et->et_ops->eo_extent_contig(et, rec, insert_rec);

	return FUNC0(
				FUNC1(et->et_ci),
				rec, insert_rec);
}