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
struct nfs_page {scalar_t__ wb_offset; scalar_t__ wb_pgbase; int /*<<< orphan*/  wb_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IOMODE_READ ; 
 int /*<<< orphan*/  NFS4_MAX_UINT64 ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct nfs_pageio_descriptor *pgio,
			struct nfs_page *req)
{
	FUNC0(pgio->pg_lseg != NULL);

	if (req->wb_offset != req->wb_pgbase) {
		/*
		 * Handling unaligned pages is difficult, because have to
		 * somehow split a req in two in certain cases in the
		 * pg.test code.  Avoid this by just not using pnfs
		 * in this case.
		 */
		FUNC1(pgio);
		return;
	}
	pgio->pg_lseg = FUNC2(pgio->pg_inode,
					   req->wb_context,
					   0,
					   NFS4_MAX_UINT64,
					   IOMODE_READ,
					   GFP_KERNEL);
	/* If no lseg, fall back to read through mds */
	if (pgio->pg_lseg == NULL)
		FUNC1(pgio);
}