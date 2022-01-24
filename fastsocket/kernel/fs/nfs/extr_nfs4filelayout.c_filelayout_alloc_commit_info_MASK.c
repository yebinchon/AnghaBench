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
struct pnfs_layout_segment {int dummy; } ;
struct pnfs_commit_bucket {int /*<<< orphan*/  committing; int /*<<< orphan*/  written; } ;
struct nfs_commit_info {int /*<<< orphan*/  lock; TYPE_2__* ds; } ;
struct nfs4_filelayout_segment {scalar_t__ stripe_type; TYPE_1__* dsaddr; scalar_t__ commit_through_mds; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {int nbuckets; struct pnfs_commit_bucket* buckets; } ;
struct TYPE_3__ {int ds_num; int stripe_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nfs4_filelayout_segment* FUNC0 (struct pnfs_layout_segment*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ STRIPE_SPARSE ; 
 struct pnfs_commit_bucket* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnfs_commit_bucket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct pnfs_layout_segment *lseg,
			     struct nfs_commit_info *cinfo,
			     gfp_t gfp_flags)
{
	struct nfs4_filelayout_segment *fl = FUNC0(lseg);
	struct pnfs_commit_bucket *buckets;
	int size;

	if (fl->commit_through_mds)
		return 0;
	if (cinfo->ds->nbuckets != 0) {
		/* This assumes there is only one IOMODE_RW lseg.  What
		 * we really want to do is have a layout_hdr level
		 * dictionary of <multipath_list4, fh> keys, each
		 * associated with a struct list_head, populated by calls
		 * to filelayout_write_pagelist().
		 * */
		return 0;
	}

	size = (fl->stripe_type == STRIPE_SPARSE) ?
		fl->dsaddr->ds_num : fl->dsaddr->stripe_count;

	buckets = FUNC2(size, sizeof(struct pnfs_commit_bucket),
			  gfp_flags);
	if (!buckets)
		return -ENOMEM;
	else {
		int i;

		FUNC4(cinfo->lock);
		if (cinfo->ds->nbuckets != 0)
			FUNC3(buckets);
		else {
			cinfo->ds->buckets = buckets;
			cinfo->ds->nbuckets = size;
			for (i = 0; i < size; i++) {
				FUNC1(&buckets[i].written);
				FUNC1(&buckets[i].committing);
			}
		}
		FUNC5(cinfo->lock);
		return 0;
	}
}