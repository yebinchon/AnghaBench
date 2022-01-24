#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/  index; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  error; } ;
struct TYPE_6__ {TYPE_2__ h; } ;
struct fuse_req {unsigned int num_pages; TYPE_3__ out; struct page** pages; TYPE_1__* page_descs; } ;
struct fuse_io_priv {struct file* file; int /*<<< orphan*/  async; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {unsigned int offset; } ;

/* Variables and functions */
 size_t PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 size_t FUNC1 (struct fuse_req*,struct fuse_io_priv*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static size_t FUNC5(struct fuse_req *req, struct file *file,
				    struct inode *inode, loff_t pos,
				    size_t count)
{
	size_t res;
	unsigned offset;
	unsigned i;
	struct fuse_io_priv io = { .async = 0, .file = file };

	for (i = 0; i < req->num_pages; i++)
		FUNC2(inode, req->pages[i]->index);

	res = FUNC1(req, &io, pos, count, NULL);

	offset = req->page_descs[0].offset;
	count = res;
	for (i = 0; i < req->num_pages; i++) {
		struct page *page = req->pages[i];

		if (!req->out.h.error && !offset && count >= PAGE_CACHE_SIZE)
			FUNC0(page);

		if (count > PAGE_CACHE_SIZE - offset)
			count -= PAGE_CACHE_SIZE - offset;
		else
			count = 0;
		offset = 0;

		FUNC4(page);
		FUNC3(page);
	}

	return res;
}