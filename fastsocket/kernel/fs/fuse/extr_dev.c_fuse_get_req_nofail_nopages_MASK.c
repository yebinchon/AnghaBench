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
struct fuse_req {int waiting; } ;
struct fuse_conn {int /*<<< orphan*/  blocked; int /*<<< orphan*/  blocked_waitq; int /*<<< orphan*/  num_waiting; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_req*) ; 
 struct fuse_req* FUNC2 (int /*<<< orphan*/ ) ; 
 struct fuse_req* FUNC3 (struct fuse_conn*,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

struct fuse_req *FUNC5(struct fuse_conn *fc,
					     struct file *file)
{
	struct fuse_req *req;

	FUNC0(&fc->num_waiting);
	FUNC4(fc->blocked_waitq, !fc->blocked);
	req = FUNC2(0);
	if (!req)
		req = FUNC3(fc, file);

	FUNC1(req);
	req->waiting = 1;
	return req;
}