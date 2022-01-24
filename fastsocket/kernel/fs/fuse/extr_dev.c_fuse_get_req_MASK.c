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
struct fuse_conn {int /*<<< orphan*/  num_waiting; int /*<<< orphan*/  connected; int /*<<< orphan*/  blocked; int /*<<< orphan*/  blocked_waitq; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int EINTR ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 struct fuse_req* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_req*) ; 
 struct fuse_req* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

struct fuse_req *FUNC8(struct fuse_conn *fc, unsigned npages)
{
	struct fuse_req *req;
	sigset_t oldset;
	int intr;
	int err;

	FUNC2(&fc->num_waiting);
	FUNC3(&oldset);
	intr = FUNC7(fc->blocked_waitq, !fc->blocked);
	FUNC6(&oldset);
	err = -EINTR;
	if (intr)
		goto out;

	err = -ENOTCONN;
	if (!fc->connected)
		goto out;

	req = FUNC5(npages);
	err = -ENOMEM;
	if (!req)
		goto out;

	FUNC4(req);
	req->waiting = 1;
	return req;

 out:
	FUNC1(&fc->num_waiting);
	return FUNC0(err);
}