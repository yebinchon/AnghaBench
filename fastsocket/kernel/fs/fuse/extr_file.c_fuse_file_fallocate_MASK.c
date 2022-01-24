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
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_10__ {TYPE_4__ h; } ;
struct TYPE_6__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_8__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_5__ out; TYPE_3__ in; } ;
struct fuse_file {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  fh; struct fuse_conn* fc; } ;
struct fuse_fallocate_in {int mode; scalar_t__ length; scalar_t__ offset; int /*<<< orphan*/  fh; } ;
struct fuse_conn {int no_fallocate; } ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_7__ {int size; struct fuse_fallocate_in* value; } ;

/* Variables and functions */
 int ENOSYS ; 
 long EOPNOTSUPP ; 
 int FALLOC_FL_KEEP_SIZE ; 
 int FALLOC_FL_PUNCH_HOLE ; 
 int /*<<< orphan*/  FUSE_FALLOCATE ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 struct fuse_req* FUNC2 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,scalar_t__,scalar_t__) ; 

long FUNC12(struct inode *inode, struct fuse_file *ff, int mode,
			 loff_t offset, loff_t length)
{
	struct fuse_conn *fc = ff->fc;
	struct fuse_req *req;
	struct fuse_fallocate_in inarg = {
		.fh = ff->fh,
		.offset = offset,
		.length = length,
		.mode = mode
	};
	int err;
	bool lock_inode = !(mode & FALLOC_FL_KEEP_SIZE) ||
			   (mode & FALLOC_FL_PUNCH_HOLE);

	if (fc->no_fallocate)
		return -EOPNOTSUPP;

	if (lock_inode) {
		FUNC9(&inode->i_mutex);
		if (mode & FALLOC_FL_PUNCH_HOLE)
			FUNC7(inode);
	}

	req = FUNC2(fc);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto out;
	}

	req->in.h.opcode = FUSE_FALLOCATE;
	req->in.h.nodeid = ff->nodeid;
	req->in.numargs = 1;
	req->in.args[0].size = sizeof(inarg);
	req->in.args[0].value = &inarg;
	FUNC6(fc, req);
	err = req->out.h.error;
	if (err == -ENOSYS) {
		fc->no_fallocate = 1;
		err = -EOPNOTSUPP;
	}
	FUNC4(fc, req);

	if (err)
		goto out;

	/* we could have extended the file */
	if (!(mode & FALLOC_FL_KEEP_SIZE))
		FUNC8(inode, offset + length);

	if (mode & FALLOC_FL_PUNCH_HOLE)
		FUNC11(inode, offset, offset + length - 1);

	FUNC3(inode);

out:
	if (lock_inode) {
		if (mode & FALLOC_FL_PUNCH_HOLE)
			FUNC5(inode);
		FUNC10(&inode->i_mutex);
	}

	return err;
}