#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_10__ {TYPE_4__ h; } ;
struct TYPE_6__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_8__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_5__ out; TYPE_3__ in; } ;
struct fuse_conn {int no_access; } ;
struct fuse_access_in {int mask; } ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_7__ {int size; struct fuse_access_in* value; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUSE_ACCESS ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int MAY_EXEC ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 int FUNC1 (struct fuse_req*) ; 
 struct fuse_req* FUNC2 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*,struct fuse_req*) ; 
 struct fuse_conn* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_access_in*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, int mask)
{
	struct fuse_conn *fc = FUNC5(inode);
	struct fuse_req *req;
	struct fuse_access_in inarg;
	int err;

	if (fc->no_access)
		return 0;

	req = FUNC2(fc);
	if (FUNC0(req))
		return FUNC1(req);

	FUNC7(&inarg, 0, sizeof(inarg));
	inarg.mask = mask & (MAY_READ | MAY_WRITE | MAY_EXEC);
	req->in.h.opcode = FUSE_ACCESS;
	req->in.h.nodeid = FUNC6(inode);
	req->in.numargs = 1;
	req->in.args[0].size = sizeof(inarg);
	req->in.args[0].value = &inarg;
	FUNC4(fc, req);
	err = req->out.h.error;
	FUNC3(fc, req);
	if (err == -ENOSYS) {
		fc->no_access = 1;
		err = 0;
	}
	return err;
}