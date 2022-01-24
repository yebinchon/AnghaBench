#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_11__ {int error; } ;
struct TYPE_12__ {int argpages; TYPE_5__ h; TYPE_4__* args; } ;
struct fuse_req {int num_pages; TYPE_6__ out; TYPE_3__* page_descs; struct page** pages; } ;
struct fuse_conn {scalar_t__ do_readdirplus; } ;
struct TYPE_8__ {TYPE_1__* dentry; } ;
struct file {int /*<<< orphan*/  f_pos; TYPE_2__ f_path; } ;
typedef  int /*<<< orphan*/  filldir_t ;
struct TYPE_10__ {size_t size; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; } ;
struct TYPE_7__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUSE_READDIR ; 
 int /*<<< orphan*/  FUSE_READDIRPLUS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*) ; 
 struct fuse_req* FUNC5 (struct fuse_conn*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct fuse_req*,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fuse_conn*,struct fuse_req*) ; 
 struct fuse_conn* FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int FUNC13 (int /*<<< orphan*/ ,size_t,struct file*,void*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,size_t,struct file*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct file *file, void *dstbuf, filldir_t filldir)
{
	int err;
	size_t nbytes;
	struct page *page;
	struct inode *inode = file->f_path.dentry->d_inode;
	struct fuse_conn *fc = FUNC10(inode);
	struct fuse_req *req;
	u64 attr_version = 0;

	if (FUNC11(inode))
		return -EIO;

	req = FUNC5(fc, 1);
	if (FUNC0(req))
		return FUNC1(req);

	page = FUNC3(GFP_KERNEL);
	if (!page) {
		FUNC7(fc, req);
		return -ENOMEM;
	}
	req->out.argpages = 1;
	req->num_pages = 1;
	req->pages[0] = page;
	req->page_descs[0].length = PAGE_SIZE;
	if (fc->do_readdirplus) {
		attr_version = FUNC4(fc);
		FUNC8(req, file, file->f_pos, PAGE_SIZE,
			       FUSE_READDIRPLUS);
	} else {
		FUNC8(req, file, file->f_pos, PAGE_SIZE,
			       FUSE_READDIR);
	}
	FUNC9(fc, req);
	nbytes = req->out.args[0].size;
	err = req->out.h.error;
	FUNC7(fc, req);
	if (!err) {
		if (fc->do_readdirplus) {
			err = FUNC14(FUNC12(page), nbytes,
						file, dstbuf, filldir,
						attr_version);
		} else {
			err = FUNC13(FUNC12(page), nbytes, file,
					    dstbuf, filldir);
		}
	}

	FUNC2(page);
	FUNC6(inode); /* atime changed */
	return err;
}