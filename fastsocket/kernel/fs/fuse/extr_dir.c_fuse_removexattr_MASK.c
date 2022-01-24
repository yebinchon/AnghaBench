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
struct fuse_conn {int no_removexattr; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_7__ {char const* value; scalar_t__ size; } ;

/* Variables and functions */
 int ENOSYS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUSE_REMOVEXATTR ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 struct fuse_req* FUNC2 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*,struct fuse_req*) ; 
 struct fuse_conn* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(struct dentry *entry, const char *name)
{
	struct inode *inode = entry->d_inode;
	struct fuse_conn *fc = FUNC5(inode);
	struct fuse_req *req;
	int err;

	if (fc->no_removexattr)
		return -EOPNOTSUPP;

	req = FUNC2(fc);
	if (FUNC0(req))
		return FUNC1(req);

	req->in.h.opcode = FUSE_REMOVEXATTR;
	req->in.h.nodeid = FUNC6(inode);
	req->in.numargs = 1;
	req->in.args[0].size = FUNC7(name) + 1;
	req->in.args[0].value = name;
	FUNC4(fc, req);
	err = req->out.h.error;
	FUNC3(fc, req);
	if (err == -ENOSYS) {
		fc->no_removexattr = 1;
		err = -EOPNOTSUPP;
	}
	return err;
}