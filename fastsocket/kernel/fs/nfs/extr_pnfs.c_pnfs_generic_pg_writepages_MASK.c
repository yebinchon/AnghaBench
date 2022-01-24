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
struct nfs_pgio_header {TYPE_2__* completion_ops; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  rpc_list; int /*<<< orphan*/  lseg; } ;
struct nfs_write_header {struct nfs_pgio_header header; } ;
struct nfs_pageio_descriptor {int /*<<< orphan*/  pg_ioflags; int /*<<< orphan*/ * pg_lseg; int /*<<< orphan*/  pg_list; TYPE_1__* pg_completion_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* completion ) (struct nfs_pgio_header*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* error_cleanup ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*,int /*<<< orphan*/ ) ; 
 struct nfs_write_header* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_pageio_descriptor*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pnfs_writehdr_free ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_pgio_header*) ; 

int
FUNC10(struct nfs_pageio_descriptor *desc)
{
	struct nfs_write_header *whdr;
	struct nfs_pgio_header *hdr;
	int ret;

	whdr = FUNC5();
	if (!whdr) {
		desc->pg_completion_ops->error_cleanup(&desc->pg_list);
		FUNC7(desc->pg_lseg);
		desc->pg_lseg = NULL;
		return -ENOMEM;
	}
	hdr = &whdr->header;
	FUNC4(desc, hdr, pnfs_writehdr_free);
	hdr->lseg = FUNC2(desc->pg_lseg);
	FUNC1(&hdr->refcnt);
	ret = FUNC3(desc, hdr);
	if (ret != 0) {
		FUNC7(desc->pg_lseg);
		desc->pg_lseg = NULL;
	} else
		FUNC6(desc, &hdr->rpc_list, desc->pg_ioflags);
	if (FUNC0(&hdr->refcnt))
		hdr->completion_ops->completion(hdr);
	return ret;
}