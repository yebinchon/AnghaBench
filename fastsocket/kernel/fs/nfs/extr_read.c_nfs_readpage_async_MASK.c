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
struct nfs_pageio_descriptor {int dummy; } ;
struct nfs_page {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* read_pageio_init ) (struct nfs_pageio_descriptor*,struct inode*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs_page*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 unsigned int PAGE_CACHE_SIZE ; 
 int FUNC2 (struct nfs_page*) ; 
 int /*<<< orphan*/  nfs_async_read_completion_ops ; 
 struct nfs_page* FUNC3 (struct nfs_open_context*,struct inode*,struct page*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_pageio_descriptor*,struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_pageio_descriptor*) ; 
 int FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_pageio_descriptor*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned int,unsigned int) ; 

int FUNC11(struct nfs_open_context *ctx, struct inode *inode,
		       struct page *page)
{
	struct nfs_page	*new;
	unsigned int len;
	struct nfs_pageio_descriptor pgio;

	len = FUNC4(page);
	if (len == 0)
		return FUNC7(page);
	new = FUNC3(ctx, inode, page, 0, len);
	if (FUNC0(new)) {
		FUNC9(page);
		return FUNC2(new);
	}
	if (len < PAGE_CACHE_SIZE)
		FUNC10(page, len, PAGE_CACHE_SIZE);

	FUNC1(inode)->read_pageio_init(&pgio, inode, &nfs_async_read_completion_ops);
	FUNC5(&pgio, new);
	FUNC6(&pgio);
	return 0;
}