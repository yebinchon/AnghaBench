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
struct page {int dummy; } ;
struct TYPE_2__ {struct page** pagevec; } ;
struct nfs_read_data {int /*<<< orphan*/  list; TYPE_1__ pages; } ;
struct nfs_pgio_header {int /*<<< orphan*/  rpc_list; int /*<<< orphan*/  pages; } ;
struct list_head {int /*<<< orphan*/  next; } ;
struct nfs_pageio_descriptor {int /*<<< orphan*/ * pg_rpc_callops; int /*<<< orphan*/  pg_count; int /*<<< orphan*/  pg_base; struct list_head pg_list; } ;
struct nfs_page {int /*<<< orphan*/  wb_page; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_page*,int /*<<< orphan*/ *) ; 
 struct nfs_page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  nfs_read_common_ops ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_read_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfs_read_data* FUNC8 (struct nfs_pgio_header*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct nfs_pageio_descriptor *desc,
			  struct nfs_pgio_header *hdr)
{
	struct nfs_page		*req;
	struct page		**pages;
	struct nfs_read_data    *data;
	struct list_head *head = &desc->pg_list;

	data = FUNC8(hdr, FUNC5(desc->pg_base,
							  desc->pg_count));
	if (!data) {
		FUNC6(desc, hdr);
		return -ENOMEM;
	}

	pages = data->pages.pagevec;
	while (!FUNC1(head)) {
		req = FUNC3(head->next);
		FUNC4(req);
		FUNC2(req, &hdr->pages);
		*pages++ = req->wb_page;
	}

	FUNC7(data, desc->pg_count, 0);
	FUNC0(&data->list, &hdr->rpc_list);
	desc->pg_rpc_callops = &nfs_read_common_ops;
	return 0;
}