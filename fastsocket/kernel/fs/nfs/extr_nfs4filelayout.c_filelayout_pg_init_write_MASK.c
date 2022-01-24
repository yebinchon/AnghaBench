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
struct nfs_pageio_descriptor {int /*<<< orphan*/ * pg_lseg; int /*<<< orphan*/  pg_dreq; int /*<<< orphan*/  pg_inode; } ;
struct nfs_page {scalar_t__ wb_offset; scalar_t__ wb_pgbase; int /*<<< orphan*/  wb_context; } ;
struct nfs_commit_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  IOMODE_RW ; 
 int /*<<< orphan*/  NFS4_MAX_UINT64 ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nfs_commit_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_commit_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct nfs_pageio_descriptor *pgio,
			 struct nfs_page *req)
{
	struct nfs_commit_info cinfo;
	int status;

	FUNC0(pgio->pg_lseg != NULL);

	if (req->wb_offset != req->wb_pgbase)
		goto out_mds;
	pgio->pg_lseg = FUNC4(pgio->pg_inode,
					   req->wb_context,
					   0,
					   NFS4_MAX_UINT64,
					   IOMODE_RW,
					   GFP_NOFS);
	/* If no lseg, fall back to write through mds */
	if (pgio->pg_lseg == NULL)
		goto out_mds;
	FUNC2(&cinfo, pgio->pg_inode, pgio->pg_dreq);
	status = FUNC1(pgio->pg_lseg, &cinfo, GFP_NOFS);
	if (status < 0) {
		FUNC5(pgio->pg_lseg);
		pgio->pg_lseg = NULL;
		goto out_mds;
	}
	return;
out_mds:
	FUNC3(pgio);
}