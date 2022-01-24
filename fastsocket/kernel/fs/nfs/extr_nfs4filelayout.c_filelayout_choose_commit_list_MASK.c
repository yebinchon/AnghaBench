#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct list_head {int dummy; } ;
struct pnfs_commit_bucket {int /*<<< orphan*/  wlseg; struct list_head written; } ;
struct nfs_page {int /*<<< orphan*/  wb_flags; } ;
struct nfs_commit_info {TYPE_2__* ds; TYPE_1__* mds; } ;
struct nfs4_filelayout_segment {scalar_t__ commit_through_mds; } ;
struct TYPE_4__ {int /*<<< orphan*/  nwritten; struct pnfs_commit_bucket* buckets; } ;
struct TYPE_3__ {struct list_head list; } ;

/* Variables and functions */
 struct nfs4_filelayout_segment* FUNC0 (struct pnfs_layout_segment*) ; 
 int /*<<< orphan*/  PG_COMMIT_TO_DS ; 
 int /*<<< orphan*/  FUNC1 (struct pnfs_layout_segment*) ; 
 scalar_t__ FUNC2 (struct list_head*) ; 
 size_t FUNC3 (struct pnfs_layout_segment*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 size_t FUNC5 (struct nfs4_filelayout_segment*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct list_head *
FUNC7(struct nfs_page *req,
			      struct pnfs_layout_segment *lseg,
			      struct nfs_commit_info *cinfo)
{
	struct nfs4_filelayout_segment *fl = FUNC0(lseg);
	u32 i, j;
	struct list_head *list;
	struct pnfs_commit_bucket *buckets;

	if (fl->commit_through_mds)
		return &cinfo->mds->list;

	/* Note that we are calling nfs4_fl_calc_j_index on each page
	 * that ends up being committed to a data server.  An attractive
	 * alternative is to add a field to nfs_write_data and nfs_page
	 * to store the value calculated in filelayout_write_pagelist
	 * and just use that here.
	 */
	j = FUNC3(lseg, FUNC4(req));
	i = FUNC5(fl, j);
	buckets = cinfo->ds->buckets;
	list = &buckets[i].written;
	if (FUNC2(list)) {
		/* Non-empty buckets hold a reference on the lseg.  That ref
		 * is normally transferred to the COMMIT call and released
		 * there.  It could also be released if the last req is pulled
		 * off due to a rewrite, in which case it will be done in
		 * filelayout_clear_request_commit
		 */
		buckets[i].wlseg = FUNC1(lseg);
	}
	FUNC6(PG_COMMIT_TO_DS, &req->wb_flags);
	cinfo->ds->nwritten++;
	return list;
}