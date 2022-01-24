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
struct pnfs_ds_commit_info {int nbuckets; struct pnfs_commit_bucket* buckets; } ;
struct pnfs_commit_bucket {int /*<<< orphan*/ * clseg; int /*<<< orphan*/  committing; } ;
struct nfs_commit_info {struct pnfs_ds_commit_info* ds; } ;
struct nfs_commit_data {int ds_commit_index; int /*<<< orphan*/  pages; int /*<<< orphan*/ * lseg; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfs_commit_data* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nfs_commit_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int
FUNC5(struct nfs_commit_info *cinfo, struct list_head *list)
{
	struct pnfs_ds_commit_info *fl_cinfo;
	struct pnfs_commit_bucket *bucket;
	struct nfs_commit_data *data;
	int i, j;
	unsigned int nreq = 0;

	fl_cinfo = cinfo->ds;
	bucket = fl_cinfo->buckets;
	for (i = 0; i < fl_cinfo->nbuckets; i++, bucket++) {
		if (FUNC1(&bucket->committing))
			continue;
		data = FUNC2();
		if (!data)
			break;
		data->ds_commit_index = i;
		data->lseg = bucket->clseg;
		bucket->clseg = NULL;
		FUNC0(&data->pages, list);
		nreq++;
	}

	/* Clean up on error */
	for (j = i; j < fl_cinfo->nbuckets; j++, bucket++) {
		if (FUNC1(&bucket->committing))
			continue;
		FUNC3(&bucket->committing, bucket->clseg, cinfo);
		FUNC4(bucket->clseg);
		bucket->clseg = NULL;
	}
	/* Caller will clean up entries put on list */
	return nreq;
}