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
struct TYPE_5__ {int /*<<< orphan*/  attr_ver; } ;
struct TYPE_6__ {TYPE_2__ read; } ;
struct TYPE_4__ {int argpages; int page_zeroing; } ;
struct fuse_req {size_t num_pages; int /*<<< orphan*/  (* end ) (struct fuse_conn*,struct fuse_req*) ;int /*<<< orphan*/  ff; TYPE_3__ misc; TYPE_1__ out; int /*<<< orphan*/ * pages; } ;
struct fuse_file {struct fuse_conn* fc; } ;
struct fuse_conn {scalar_t__ async_read; } ;
struct file {struct fuse_file* private_data; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_READ ; 
 size_t PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_req*,struct file*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct fuse_req *req, struct file *file)
{
	struct fuse_file *ff = file->private_data;
	struct fuse_conn *fc = ff->fc;
	loff_t pos = FUNC7(req->pages[0]);
	size_t count = req->num_pages << PAGE_CACHE_SHIFT;

	req->out.argpages = 1;
	req->out.page_zeroing = 1;
	FUNC3(req, file, pos, count, FUSE_READ);
	req->misc.read.attr_ver = FUNC1(fc);
	if (fc->async_read) {
		req->ff = FUNC0(ff);
		req->end = fuse_readpages_end;
		FUNC6(fc, req);
	} else {
		FUNC5(fc, req);
		FUNC4(fc, req);
		FUNC2(fc, req);
	}
}