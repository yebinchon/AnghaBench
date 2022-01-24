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
struct TYPE_4__ {int /*<<< orphan*/  prev; } ;
struct nfs_pageio_descriptor {scalar_t__ pg_count; TYPE_2__ pg_list; int /*<<< orphan*/  pg_base; TYPE_1__* pg_ops; } ;
struct nfs_page {scalar_t__ wb_bytes; int /*<<< orphan*/  wb_pgbase; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* pg_init ) (struct nfs_pageio_descriptor*,struct nfs_page*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_page*,struct nfs_page*,struct nfs_pageio_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_page*,TYPE_2__*) ; 
 struct nfs_page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 

__attribute__((used)) static int FUNC5(struct nfs_pageio_descriptor *desc,
				     struct nfs_page *req)
{
	if (desc->pg_count != 0) {
		struct nfs_page *prev;

		prev = FUNC2(desc->pg_list.prev);
		if (!FUNC0(prev, req, desc))
			return 0;
	} else {
		if (desc->pg_ops->pg_init)
			desc->pg_ops->pg_init(desc, req);
		desc->pg_base = req->wb_pgbase;
	}
	FUNC3(req);
	FUNC1(req, &desc->pg_list);
	desc->pg_count += req->wb_bytes;
	return 1;
}