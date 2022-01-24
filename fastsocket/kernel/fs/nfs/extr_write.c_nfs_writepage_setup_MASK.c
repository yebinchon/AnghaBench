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
struct page {int dummy; } ;
struct nfs_page {int /*<<< orphan*/  wb_bytes; int /*<<< orphan*/  wb_pgbase; } ;
struct nfs_open_context {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs_page*) ; 
 int FUNC1 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfs_page* FUNC5 (struct nfs_open_context*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_page*) ; 

__attribute__((used)) static int FUNC7(struct nfs_open_context *ctx, struct page *page,
		unsigned int offset, unsigned int count)
{
	struct nfs_page	*req;

	req = FUNC5(ctx, page, offset, count);
	if (FUNC0(req))
		return FUNC1(req);
	/* Update file length */
	FUNC2(page, offset, count);
	FUNC4(page, req->wb_pgbase, req->wb_bytes);
	FUNC3(req);
	FUNC6(req);
	return 0;
}