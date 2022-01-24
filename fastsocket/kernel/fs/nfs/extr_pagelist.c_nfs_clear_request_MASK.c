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
struct nfs_page {struct nfs_open_context* wb_context; struct nfs_lock_context* wb_lock_context; struct page* wb_page; } ;
struct nfs_open_context {int dummy; } ;
struct nfs_lock_context {int /*<<< orphan*/  io_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_open_context*) ; 

__attribute__((used)) static void FUNC4(struct nfs_page *req)
{
	struct page *page = req->wb_page;
	struct nfs_open_context *ctx = req->wb_context;
	struct nfs_lock_context *l_ctx = req->wb_lock_context;

	if (page != NULL) {
		FUNC2(page);
		req->wb_page = NULL;
	}
	if (l_ctx != NULL) {
		FUNC0(&l_ctx->io_count);
		FUNC1(l_ctx);
		req->wb_lock_context = NULL;
	}
	if (ctx != NULL) {
		FUNC3(ctx);
		req->wb_context = NULL;
	}
}