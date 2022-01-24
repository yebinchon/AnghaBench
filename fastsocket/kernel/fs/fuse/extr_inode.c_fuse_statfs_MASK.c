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
struct super_block {int dummy; } ;
struct kstatfs {int /*<<< orphan*/  f_type; } ;
struct fuse_statfs_out {int /*<<< orphan*/  st; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_10__ {int numargs; TYPE_4__ h; TYPE_3__* args; } ;
struct TYPE_6__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_7__ {TYPE_1__ h; scalar_t__ numargs; } ;
struct fuse_req {TYPE_5__ out; TYPE_2__ in; } ;
struct fuse_conn {int minor; } ;
struct dentry {int /*<<< orphan*/  d_inode; struct super_block* d_sb; } ;
typedef  int /*<<< orphan*/  outarg ;
struct TYPE_8__ {int size; struct fuse_statfs_out* value; } ;

/* Variables and functions */
 int FUSE_COMPAT_STATFS_SIZE ; 
 int /*<<< orphan*/  FUSE_STATFS ; 
 int /*<<< orphan*/  FUSE_SUPER_MAGIC ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct kstatfs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 
 struct fuse_req* FUNC4 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_conn*,struct fuse_req*) ; 
 struct fuse_conn* FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fuse_statfs_out*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct dentry *dentry, struct kstatfs *buf)
{
	struct super_block *sb = dentry->d_sb;
	struct fuse_conn *fc = FUNC7(sb);
	struct fuse_req *req;
	struct fuse_statfs_out outarg;
	int err;

	if (!FUNC3(fc)) {
		buf->f_type = FUSE_SUPER_MAGIC;
		return 0;
	}

	req = FUNC4(fc);
	if (FUNC0(req))
		return FUNC1(req);

	FUNC9(&outarg, 0, sizeof(outarg));
	req->in.numargs = 0;
	req->in.h.opcode = FUSE_STATFS;
	req->in.h.nodeid = FUNC8(dentry->d_inode);
	req->out.numargs = 1;
	req->out.args[0].size =
		fc->minor < 4 ? FUSE_COMPAT_STATFS_SIZE : sizeof(outarg);
	req->out.args[0].value = &outarg;
	FUNC6(fc, req);
	err = req->out.h.error;
	if (!err)
		FUNC2(buf, &outarg.st);
	FUNC5(fc, req);
	return err;
}