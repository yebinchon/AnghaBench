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
struct TYPE_11__ {int error; } ;
struct TYPE_12__ {int numargs; TYPE_5__ h; TYPE_4__* args; } ;
struct TYPE_7__ {int opcode; int /*<<< orphan*/  nodeid; } ;
struct TYPE_9__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_6__ out; TYPE_3__ in; } ;
struct fuse_open_out {int dummy; } ;
struct fuse_open_in {int flags; } ;
struct fuse_conn {int /*<<< orphan*/  atomic_o_trunc; } ;
struct file {int f_flags; } ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_10__ {int size; struct fuse_open_out* value; } ;
struct TYPE_8__ {int size; struct fuse_open_in* value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_NOCTTY ; 
 int O_TRUNC ; 
 int FUNC1 (struct fuse_req*) ; 
 struct fuse_req* FUNC2 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_open_in*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct fuse_conn *fc, u64 nodeid, struct file *file,
			  int opcode, struct fuse_open_out *outargp)
{
	struct fuse_open_in inarg;
	struct fuse_req *req;
	int err;

	req = FUNC2(fc);
	if (FUNC0(req))
		return FUNC1(req);

	FUNC5(&inarg, 0, sizeof(inarg));
	inarg.flags = file->f_flags & ~(O_CREAT | O_EXCL | O_NOCTTY);
	if (!fc->atomic_o_trunc)
		inarg.flags &= ~O_TRUNC;
	req->in.h.opcode = opcode;
	req->in.h.nodeid = nodeid;
	req->in.numargs = 1;
	req->in.args[0].size = sizeof(inarg);
	req->in.args[0].value = &inarg;
	req->out.numargs = 1;
	req->out.args[0].size = sizeof(*outargp);
	req->out.args[0].value = outargp;
	FUNC4(fc, req);
	err = req->out.h.error;
	FUNC3(fc, req);

	return err;
}