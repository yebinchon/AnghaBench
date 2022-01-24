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
struct TYPE_11__ {int error; } ;
struct TYPE_12__ {int numargs; TYPE_5__ h; TYPE_4__* args; } ;
struct TYPE_7__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_9__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_6__ out; TYPE_3__ in; } ;
struct fuse_poll_out {int revents; } ;
struct fuse_poll_in {int /*<<< orphan*/  flags; int /*<<< orphan*/  kh; int /*<<< orphan*/  fh; } ;
struct fuse_file {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  kh; int /*<<< orphan*/  fh; struct fuse_conn* fc; } ;
struct fuse_conn {int no_poll; } ;
struct file {struct fuse_file* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  outarg ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_10__ {int size; struct fuse_poll_out* value; } ;
struct TYPE_8__ {int size; struct fuse_poll_in* value; } ;

/* Variables and functions */
 int DEFAULT_POLLMASK ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUSE_POLL ; 
 int /*<<< orphan*/  FUSE_POLL_SCHEDULE_NOTIFY ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int POLLERR ; 
 struct fuse_req* FUNC1 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*,struct fuse_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

unsigned FUNC7(struct file *file, poll_table *wait)
{
	struct fuse_file *ff = file->private_data;
	struct fuse_conn *fc = ff->fc;
	struct fuse_poll_in inarg = { .fh = ff->fh, .kh = ff->kh };
	struct fuse_poll_out outarg;
	struct fuse_req *req;
	int err;

	if (fc->no_poll)
		return DEFAULT_POLLMASK;

	FUNC5(file, &ff->poll_wait, wait);

	/*
	 * Ask for notification iff there's someone waiting for it.
	 * The client may ignore the flag and always notify.
	 */
	if (FUNC6(&ff->poll_wait)) {
		inarg.flags |= FUSE_POLL_SCHEDULE_NOTIFY;
		FUNC3(fc, ff);
	}

	req = FUNC1(fc);
	if (FUNC0(req))
		return POLLERR;

	req->in.h.opcode = FUSE_POLL;
	req->in.h.nodeid = ff->nodeid;
	req->in.numargs = 1;
	req->in.args[0].size = sizeof(inarg);
	req->in.args[0].value = &inarg;
	req->out.numargs = 1;
	req->out.args[0].size = sizeof(outarg);
	req->out.args[0].value = &outarg;
	FUNC4(fc, req);
	err = req->out.h.error;
	FUNC2(fc, req);

	if (!err)
		return outarg.revents;
	if (err == -ENOSYS) {
		fc->no_poll = 1;
		return DEFAULT_POLLMASK;
	}
	return POLLERR;
}