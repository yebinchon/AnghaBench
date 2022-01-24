#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_mode; scalar_t__ i_size; int /*<<< orphan*/  i_mapping; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_size; } ;
struct TYPE_15__ {int mode; scalar_t__ size; } ;
struct fuse_setattr_in {TYPE_7__ attr; int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  valid; int /*<<< orphan*/  fh; } ;
struct TYPE_13__ {int error; } ;
struct TYPE_14__ {int numargs; TYPE_5__ h; TYPE_4__* args; } ;
struct TYPE_9__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_11__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_6__ out; TYPE_3__ in; } ;
struct fuse_file {int /*<<< orphan*/  fh; } ;
struct fuse_conn {int flags; int minor; int /*<<< orphan*/  lock; scalar_t__ atomic_o_trunc; } ;
struct fuse_attr_out {TYPE_7__ attr; int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  valid; int /*<<< orphan*/  fh; } ;
struct file {struct fuse_file* private_data; } ;
typedef  int /*<<< orphan*/  outarg ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_16__ {int /*<<< orphan*/  files; } ;
struct TYPE_12__ {int size; struct fuse_setattr_in* value; } ;
struct TYPE_10__ {int size; struct fuse_setattr_in* value; } ;

/* Variables and functions */
 int ATTR_OPEN ; 
 int ATTR_SIZE ; 
 int EINTR ; 
 int EIO ; 
 int /*<<< orphan*/  FATTR_FH ; 
 int /*<<< orphan*/  FATTR_LOCKOWNER ; 
 int FUSE_COMPAT_ATTR_OUT_SIZE ; 
 int FUSE_DEFAULT_PERMISSIONS ; 
 int /*<<< orphan*/  FUSE_SETATTR ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 int S_IFMT ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_setattr_in*) ; 
 TYPE_8__* current ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 struct fuse_req* FUNC6 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct fuse_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 struct fuse_conn* FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct iattr*,struct fuse_setattr_in*) ; 
 int FUNC17 (struct inode*,struct iattr*) ; 
 int FUNC18 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct fuse_setattr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,scalar_t__,scalar_t__) ; 

int FUNC25(struct inode *inode, struct iattr *attr,
		    struct file *file)
{
	struct fuse_conn *fc = FUNC13(inode);
	struct fuse_req *req;
	struct fuse_setattr_in inarg;
	struct fuse_attr_out outarg;
	bool is_truncate = false;
	loff_t oldsize;
	int err;

	if (fc->flags & FUSE_DEFAULT_PERMISSIONS) {
		err = FUNC17(inode, attr);
		if (err)
			return err;
	}

	if ((attr->ia_valid & ATTR_OPEN) && fc->atomic_o_trunc)
		return 0;

	if (attr->ia_valid & ATTR_SIZE) {
		err = FUNC18(inode, attr->ia_size);
		if (err)
			return err;
		is_truncate = true;
	}

	req = FUNC6(fc);
	if (FUNC0(req))
		return FUNC1(req);

	if (is_truncate)
		FUNC12(inode);

	FUNC21(&inarg, 0, sizeof(inarg));
	FUNC21(&outarg, 0, sizeof(outarg));
	FUNC16(attr, &inarg);
	if (file) {
		struct fuse_file *ff = file->private_data;
		inarg.valid |= FATTR_FH;
		inarg.fh = ff->fh;
	}
	if (attr->ia_valid & ATTR_SIZE) {
		/* For mandatory locking in truncate */
		inarg.valid |= FATTR_LOCKOWNER;
		inarg.lock_owner = FUNC8(fc, current->files);
	}
	req->in.h.opcode = FUSE_SETATTR;
	req->in.h.nodeid = FUNC14(inode);
	req->in.numargs = 1;
	req->in.args[0].size = sizeof(inarg);
	req->in.args[0].value = &inarg;
	req->out.numargs = 1;
	if (fc->minor < 9)
		req->out.args[0].size = FUSE_COMPAT_ATTR_OUT_SIZE;
	else
		req->out.args[0].size = sizeof(outarg);
	req->out.args[0].value = &outarg;
	FUNC11(fc, req);
	err = req->out.h.error;
	FUNC9(fc, req);
	if (err) {
		if (err == -EINTR)
			FUNC7(inode);
		goto error;
	}

	if ((inode->i_mode ^ outarg.attr.mode) & S_IFMT) {
		FUNC20(inode);
		err = -EIO;
		goto error;
	}

	FUNC22(&fc->lock);
	FUNC5(inode, &outarg.attr,
				      FUNC4(&outarg));
	oldsize = inode->i_size;
	FUNC15(inode, outarg.attr.size);

	if (is_truncate) {
		/* NOTE: this may release/reacquire fc->lock */
		FUNC3(inode);
	}
	FUNC23(&fc->lock);

	/*
	 * Only call invalidate_inode_pages2() after removing
	 * FUSE_NOWRITE, otherwise fuse_launder_page() would deadlock.
	 */
	if (FUNC2(inode->i_mode) && oldsize != outarg.attr.size) {
		FUNC24(inode, oldsize, outarg.attr.size);
		FUNC19(inode->i_mapping);
	}

	return 0;

error:
	if (is_truncate)
		FUNC10(inode);

	return err;
}