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
struct fuse_req {int /*<<< orphan*/  max_pages; int /*<<< orphan*/  page_descs; int /*<<< orphan*/  pages; struct file* stolen_file; } ;
struct fuse_file {struct fuse_req* reserved_req; } ;
struct fuse_conn {int /*<<< orphan*/  lock; int /*<<< orphan*/  reserved_req_waitq; } ;
struct file {struct fuse_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fuse_conn *fc, struct fuse_req *req)
{
	struct file *file = req->stolen_file;
	struct fuse_file *ff = file->private_data;

	FUNC3(&fc->lock);
	FUNC2(req, req->pages, req->page_descs, req->max_pages);
	FUNC0(ff->reserved_req);
	ff->reserved_req = req;
	FUNC5(&fc->reserved_req_waitq);
	FUNC4(&fc->lock);
	FUNC1(file);
}