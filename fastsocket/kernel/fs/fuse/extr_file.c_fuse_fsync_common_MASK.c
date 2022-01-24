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
struct fuse_fsync_in {int fsync_flags; int /*<<< orphan*/  fh; } ;
struct fuse_file {int /*<<< orphan*/  fh; } ;
struct fuse_conn {int no_fsync; int no_fsyncdir; } ;
struct file {struct fuse_file* private_data; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_7__ {int size; struct fuse_fsync_in* value; } ;

/* Variables and functions */
 int EIO ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUSE_FSYNC ; 
 int /*<<< orphan*/  FUSE_FSYNCDIR ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 struct fuse_req* FUNC2 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct fuse_conn* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct fuse_fsync_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC11(struct file *file, struct dentry *de, int datasync,
		      int isdir)
{
	struct inode *inode = de->d_inode;
	struct fuse_conn *fc = FUNC6(inode);
	struct fuse_file *ff = file->private_data;
	struct fuse_req *req;
	struct fuse_fsync_in inarg;
	int err;

	if (FUNC8(inode))
		return -EIO;

	if ((!isdir && fc->no_fsync) || (isdir && fc->no_fsyncdir))
		return 0;

	/*
	 * Start writeback against all dirty pages of the inode, then
	 * wait for all outstanding writes, before sending the FSYNC
	 * request.
	 */
	err = FUNC10(inode, 0);
	if (err)
		return err;

	FUNC5(inode);

	req = FUNC2(fc);
	if (FUNC0(req))
		return FUNC1(req);

	FUNC9(&inarg, 0, sizeof(inarg));
	inarg.fh = ff->fh;
	inarg.fsync_flags = datasync ? 1 : 0;
	req->in.h.opcode = isdir ? FUSE_FSYNCDIR : FUSE_FSYNC;
	req->in.h.nodeid = FUNC7(inode);
	req->in.numargs = 1;
	req->in.args[0].size = sizeof(inarg);
	req->in.args[0].value = &inarg;
	FUNC4(fc, req);
	err = req->out.h.error;
	FUNC3(fc, req);
	if (err == -ENOSYS) {
		if (isdir)
			fc->no_fsyncdir = 1;
		else
			fc->no_fsync = 1;
		err = 0;
	}
	return err;
}