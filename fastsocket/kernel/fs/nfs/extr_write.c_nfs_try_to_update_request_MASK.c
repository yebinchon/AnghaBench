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
struct nfs_page {unsigned int wb_offset; unsigned int wb_bytes; unsigned int wb_pgbase; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 struct nfs_page* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_page*) ; 
 scalar_t__ FUNC3 (struct nfs_page*) ; 
 struct nfs_page* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*) ; 
 int FUNC6 (struct nfs_page*) ; 
 int FUNC7 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs_page *FUNC10(struct inode *inode,
		struct page *page,
		unsigned int offset,
		unsigned int bytes)
{
	struct nfs_page *req;
	unsigned int rqend;
	unsigned int end;
	int error;

	if (!FUNC1(page))
		return NULL;

	end = offset + bytes;
	FUNC8(&inode->i_lock);

	for (;;) {
		req = FUNC4(page);
		if (req == NULL)
			goto out_unlock;

		rqend = req->wb_offset + req->wb_bytes;
		/*
		 * Tell the caller to flush out the request if
		 * the offsets are non-contiguous.
		 * Note: nfs_flush_incompatible() will already
		 * have flushed out requests having wrong owners.
		 */
		if (offset > rqend
		    || end < req->wb_offset)
			goto out_flushme;

		if (FUNC3(req))
			break;

		/* The request is locked, so wait and then retry */
		FUNC9(&inode->i_lock);
		error = FUNC6(req);
		FUNC5(req);
		if (error != 0)
			goto out_err;
		FUNC8(&inode->i_lock);
	}

	/* Okay, the request matches. Update the region */
	if (offset < req->wb_offset) {
		req->wb_offset = offset;
		req->wb_pgbase = offset;
	}
	if (end > rqend)
		req->wb_bytes = end - req->wb_offset;
	else
		req->wb_bytes = rqend - req->wb_offset;
out_unlock:
	FUNC9(&inode->i_lock);
	if (req)
		FUNC2(req);
	return req;
out_flushme:
	FUNC9(&inode->i_lock);
	FUNC5(req);
	error = FUNC7(inode, page);
out_err:
	return FUNC0(error);
}