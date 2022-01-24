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
typedef  int /*<<< orphan*/  u64 ;
struct page {int /*<<< orphan*/  index; TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {int error; } ;
struct TYPE_8__ {int page_zeroing; int argpages; TYPE_3__ h; } ;
struct fuse_req {int num_pages; TYPE_4__ out; TYPE_2__* page_descs; struct page** pages; } ;
struct fuse_io_priv {struct file* file; int /*<<< orphan*/  async; } ;
struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_6__ {size_t length; } ;
struct TYPE_5__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 size_t PAGE_CACHE_SIZE ; 
 int FUNC1 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 
 struct fuse_req* FUNC4 (struct fuse_conn*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct fuse_req*,struct fuse_io_priv*,scalar_t__,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

__attribute__((used)) static int FUNC14(struct file *file, struct page *page)
{
	struct fuse_io_priv io = { .async = 0, .file = file };
	struct inode *inode = page->mapping->host;
	struct fuse_conn *fc = FUNC10(inode);
	struct fuse_req *req;
	size_t num_read;
	loff_t pos = FUNC12(page);
	size_t count = PAGE_CACHE_SIZE;
	u64 attr_ver;
	int err;

	err = -EIO;
	if (FUNC11(inode))
		goto out;

	/*
	 * Page writeback can extend beyond the liftime of the
	 * page-cache page, so make sure we read a properly synced
	 * page.
	 */
	FUNC9(inode, page->index);

	req = FUNC4(fc, 1);
	err = FUNC1(req);
	if (FUNC0(req))
		goto out;

	attr_ver = FUNC3(fc);

	req->out.page_zeroing = 1;
	req->out.argpages = 1;
	req->num_pages = 1;
	req->pages[0] = page;
	req->page_descs[0].length = count;
	num_read = FUNC8(req, &io, pos, count, NULL);
	err = req->out.h.error;
	FUNC6(fc, req);

	if (!err) {
		/*
		 * Short read means EOF.  If file size is larger, truncate it
		 */
		if (num_read < count)
			FUNC7(inode, pos + num_read, attr_ver);

		FUNC2(page);
	}

	FUNC5(inode); /* atime changed */
 out:
	FUNC13(page);
	return err;
}