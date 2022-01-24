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
struct page {int /*<<< orphan*/  index; } ;
struct nfs_page {unsigned int wb_offset; unsigned int wb_pgbase; unsigned int wb_bytes; int /*<<< orphan*/  wb_kref; int /*<<< orphan*/  wb_context; int /*<<< orphan*/  wb_index; struct page* wb_page; struct nfs_lock_context* wb_lock_context; } ;
struct nfs_open_context {int /*<<< orphan*/  flags; } ;
struct nfs_lock_context {int /*<<< orphan*/  io_count; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct nfs_page* FUNC0 (struct nfs_lock_context*) ; 
 struct nfs_page* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfs_lock_context*) ; 
 int /*<<< orphan*/  NFS_CONTEXT_BAD ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nfs_lock_context* FUNC5 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct nfs_page* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct nfs_page *
FUNC11(struct nfs_open_context *ctx, struct inode *inode,
		   struct page *page,
		   unsigned int offset, unsigned int count)
{
	struct nfs_page		*req;
	struct nfs_lock_context *l_ctx;

	if (FUNC10(NFS_CONTEXT_BAD, &ctx->flags))
		return FUNC1(-EBADF);
	/* try to allocate the request struct */
	req = FUNC7();
	if (req == NULL)
		return FUNC1(-ENOMEM);

	/* get lock context early so we can deal with alloc failures */
	l_ctx = FUNC5(ctx);
	if (FUNC2(l_ctx)) {
		FUNC8(req);
		return FUNC0(l_ctx);
	}
	req->wb_lock_context = l_ctx;
	FUNC6(&l_ctx->io_count);

	/* Initialize the request struct. Initially, we assume a
	 * long write-back delay. This will be adjusted in
	 * update_nfs_request below if the region is not locked. */
	req->wb_page    = page;
	req->wb_index	= page->index;
	FUNC9(page);
	req->wb_offset  = offset;
	req->wb_pgbase	= offset;
	req->wb_bytes   = count;
	req->wb_context = FUNC3(ctx);
	FUNC4(&req->wb_kref);
	return req;
}