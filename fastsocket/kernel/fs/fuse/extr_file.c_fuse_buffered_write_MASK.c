#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/  index; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {int error; } ;
struct TYPE_8__ {TYPE_3__ h; } ;
struct TYPE_5__ {int argpages; } ;
struct fuse_req {int num_pages; TYPE_4__ out; TYPE_2__* page_descs; struct page** pages; TYPE_1__ in; } ;
struct fuse_io_priv {struct file* file; int /*<<< orphan*/  async; } ;
struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;
typedef  int loff_t ;
struct TYPE_6__ {unsigned int offset; unsigned int length; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC1 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct fuse_req* FUNC3 (struct fuse_conn*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_conn*,struct fuse_req*) ; 
 size_t FUNC6 (struct fuse_req*,struct fuse_io_priv*,int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 struct fuse_conn* FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 

__attribute__((used)) static int FUNC11(struct file *file, struct inode *inode,
			       loff_t pos, unsigned count, struct page *page)
{
	int err;
	size_t nres;
	struct fuse_conn *fc = FUNC9(inode);
	unsigned offset = pos & (PAGE_CACHE_SIZE - 1);
	struct fuse_req *req;
	struct fuse_io_priv io = { .async = 0, .file = file };

	if (FUNC10(inode))
		return -EIO;

	/*
	 * Make sure writepages on the same page are not mixed up with
	 * plain writes.
	 */
	FUNC7(inode, page->index);

	req = FUNC3(fc, 1);
	if (FUNC0(req))
		return FUNC1(req);

	req->in.argpages = 1;
	req->num_pages = 1;
	req->pages[0] = page;
	req->page_descs[0].offset = offset;
	req->page_descs[0].length = count;
	nres = FUNC6(req, &io, pos, count, NULL);
	err = req->out.h.error;
	FUNC5(fc, req);
	if (!err && !nres)
		err = -EIO;
	if (!err) {
		pos += nres;
		FUNC8(inode, pos);
		if (count == PAGE_CACHE_SIZE)
			FUNC2(page);
	}
	FUNC4(inode);
	return err ? err : nres;
}