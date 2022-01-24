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
struct nfs_write_data {int /*<<< orphan*/  list; TYPE_1__ pages; } ;
struct nfs_pgio_header {int /*<<< orphan*/  rpc_list; int /*<<< orphan*/  pages; } ;
struct list_head {int /*<<< orphan*/  next; } ;
struct nfs_pageio_descriptor {int pg_ioflags; int /*<<< orphan*/ * pg_rpc_callops; int /*<<< orphan*/  pg_count; scalar_t__ pg_moreio; int /*<<< orphan*/  pg_dreq; int /*<<< orphan*/  pg_inode; int /*<<< orphan*/  pg_base; struct list_head pg_list; } ;
struct nfs_page {int /*<<< orphan*/  wb_page; } ;
struct nfs_commit_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FLUSH_COND_STABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_commit_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*,int /*<<< orphan*/ *) ; 
 struct nfs_page* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct nfs_commit_info*) ; 
 int /*<<< orphan*/  nfs_write_common_ops ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_write_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct nfs_commit_info*) ; 
 struct nfs_write_data* FUNC10 (struct nfs_pgio_header*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct nfs_pageio_descriptor *desc,
			 struct nfs_pgio_header *hdr)
{
	struct nfs_page		*req;
	struct page		**pages;
	struct nfs_write_data	*data;
	struct list_head *head = &desc->pg_list;
	struct nfs_commit_info cinfo;

	data = FUNC10(hdr, FUNC7(desc->pg_base,
							   desc->pg_count));
	if (!data) {
		FUNC2(desc, hdr);
		return -ENOMEM;
	}

	FUNC3(&cinfo, desc->pg_inode, desc->pg_dreq);
	pages = data->pages.pagevec;
	while (!FUNC1(head)) {
		req = FUNC5(head->next);
		FUNC6(req);
		FUNC4(req, &hdr->pages);
		*pages++ = req->wb_page;
	}

	if ((desc->pg_ioflags & FLUSH_COND_STABLE) &&
	    (desc->pg_moreio || FUNC8(&cinfo)))
		desc->pg_ioflags &= ~FLUSH_COND_STABLE;

	/* Set up the argument struct */
	FUNC9(data, desc->pg_count, 0, desc->pg_ioflags, &cinfo);
	FUNC0(&data->list, &hdr->rpc_list);
	desc->pg_rpc_callops = &nfs_write_common_ops;
	return 0;
}