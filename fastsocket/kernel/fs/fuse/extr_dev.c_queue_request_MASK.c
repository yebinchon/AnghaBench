#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/  unique; } ;
struct TYPE_4__ {scalar_t__ args; int /*<<< orphan*/  numargs; TYPE_1__ h; } ;
struct fuse_req {int waiting; int /*<<< orphan*/  state; int /*<<< orphan*/  list; TYPE_2__ in; } ;
struct fuse_in_header {int dummy; } ;
struct fuse_conn {int /*<<< orphan*/  fasync; int /*<<< orphan*/  waitq; int /*<<< orphan*/  num_waiting; int /*<<< orphan*/  pending; } ;
struct fuse_arg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_REQ_PENDING ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct fuse_arg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct fuse_conn *fc, struct fuse_req *req)
{
	req->in.h.unique = FUNC1(fc);
	req->in.h.len = sizeof(struct fuse_in_header) +
		FUNC3(req->in.numargs, (struct fuse_arg *) req->in.args);
	FUNC4(&req->list, &fc->pending);
	req->state = FUSE_REQ_PENDING;
	if (!req->waiting) {
		req->waiting = 1;
		FUNC0(&fc->num_waiting);
	}
	FUNC5(&fc->waitq);
	FUNC2(&fc->fasync, SIGIO, POLL_IN);
}