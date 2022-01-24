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
struct nfs_pageio_descriptor {int /*<<< orphan*/ * pg_lseg; int /*<<< orphan*/  pg_inode; } ;
struct nfs_page {scalar_t__ wb_offset; scalar_t__ wb_pgbase; int /*<<< orphan*/  wb_bytes; int /*<<< orphan*/  wb_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  IOMODE_RW ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 

void
FUNC4(struct nfs_pageio_descriptor *pgio, struct nfs_page *req)
{
	FUNC0(pgio->pg_lseg != NULL);

	if (req->wb_offset != req->wb_pgbase) {
		FUNC1(pgio);
		return;
	}
	pgio->pg_lseg = FUNC2(pgio->pg_inode,
					   req->wb_context,
					   FUNC3(req),
					   req->wb_bytes,
					   IOMODE_RW,
					   GFP_NOFS);
	/* If no lseg, fall back to write through mds */
	if (pgio->pg_lseg == NULL)
		FUNC1(pgio);
}