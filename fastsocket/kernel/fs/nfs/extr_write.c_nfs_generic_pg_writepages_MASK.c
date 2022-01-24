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
struct nfs_pgio_header {TYPE_1__* completion_ops; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  rpc_list; } ;
struct nfs_write_header {struct nfs_pgio_header header; } ;
struct nfs_pageio_descriptor {int /*<<< orphan*/  pg_ioflags; int /*<<< orphan*/  pg_rpc_callops; int /*<<< orphan*/  pg_list; TYPE_2__* pg_completion_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* error_cleanup ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* completion ) (struct nfs_pgio_header*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*,int /*<<< orphan*/ ) ; 
 struct nfs_write_header* FUNC5 () ; 
 int /*<<< orphan*/  nfs_writehdr_free ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_pgio_header*) ; 

__attribute__((used)) static int FUNC8(struct nfs_pageio_descriptor *desc)
{
	struct nfs_write_header *whdr;
	struct nfs_pgio_header *hdr;
	int ret;

	whdr = FUNC5();
	if (!whdr) {
		desc->pg_completion_ops->error_cleanup(&desc->pg_list);
		return -ENOMEM;
	}
	hdr = &whdr->header;
	FUNC4(desc, hdr, nfs_writehdr_free);
	FUNC1(&hdr->refcnt);
	ret = FUNC3(desc, hdr);
	if (ret == 0)
		ret = FUNC2(&hdr->rpc_list,
					     desc->pg_rpc_callops,
					     desc->pg_ioflags);
	if (FUNC0(&hdr->refcnt))
		hdr->completion_ops->completion(hdr);
	return ret;
}