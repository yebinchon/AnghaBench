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
struct fuse_req {struct file* stolen_file; } ;
struct fuse_file {struct fuse_req* reserved_req; } ;
struct fuse_conn {int /*<<< orphan*/  lock; int /*<<< orphan*/  reserved_req_waitq; } ;
struct file {struct fuse_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fuse_req*) ; 

__attribute__((used)) static struct fuse_req *FUNC4(struct fuse_conn *fc,
					 struct file *file)
{
	struct fuse_req *req = NULL;
	struct fuse_file *ff = file->private_data;

	do {
		FUNC3(fc->reserved_req_waitq, ff->reserved_req);
		FUNC1(&fc->lock);
		if (ff->reserved_req) {
			req = ff->reserved_req;
			ff->reserved_req = NULL;
			FUNC0(file);
			req->stolen_file = file;
		}
		FUNC2(&fc->lock);
	} while (!req);

	return req;
}