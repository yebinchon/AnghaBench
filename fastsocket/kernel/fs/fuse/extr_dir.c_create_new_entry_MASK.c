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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct TYPE_10__ {int error; } ;
struct TYPE_11__ {int numargs; TYPE_4__ h; TYPE_3__* args; } ;
struct TYPE_7__ {int /*<<< orphan*/  nodeid; } ;
struct TYPE_8__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_5__ out; TYPE_2__ in; } ;
struct TYPE_12__ {int mode; } ;
struct fuse_entry_out {int /*<<< orphan*/  nodeid; TYPE_6__ attr; int /*<<< orphan*/  generation; } ;
struct fuse_conn {int minor; int /*<<< orphan*/  inst_mutex; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  outarg ;
struct TYPE_9__ {int size; struct fuse_entry_out* value; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int FUSE_COMPAT_ENTRY_OUT_SIZE ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 int S_IFMT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct fuse_entry_out*) ; 
 struct fuse_req* FUNC8 (struct fuse_conn*) ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC12 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC13 (struct fuse_conn*,struct fuse_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct fuse_entry_out*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct fuse_conn *fc, struct fuse_req *req,
			    struct inode *dir, struct dentry *entry,
			    int mode)
{
	struct fuse_entry_out outarg;
	struct inode *inode;
	int err;
	struct fuse_req *forget_req;

	forget_req = FUNC8(fc);
	if (FUNC0(forget_req)) {
		FUNC11(fc, req);
		return FUNC1(forget_req);
	}

	FUNC17(&outarg, 0, sizeof(outarg));
	req->in.h.nodeid = FUNC14(dir);
	req->out.numargs = 1;
	if (fc->minor < 9)
		req->out.args[0].size = FUSE_COMPAT_ENTRY_OUT_SIZE;
	else
		req->out.args[0].size = sizeof(outarg);
	req->out.args[0].value = &outarg;
	FUNC12(fc, req);
	err = req->out.h.error;
	FUNC11(fc, req);
	if (err)
		goto out_put_forget_req;

	err = -EIO;
	if (FUNC15(outarg.nodeid))
		goto out_put_forget_req;

	if ((outarg.attr.mode ^ mode) & S_IFMT)
		goto out_put_forget_req;

	inode = FUNC9(dir->i_sb, outarg.nodeid, outarg.generation,
			  &outarg.attr, FUNC6(&outarg), 0);
	if (!inode) {
		FUNC13(fc, forget_req, outarg.nodeid, 1);
		return -ENOMEM;
	}
	FUNC11(fc, forget_req);

	if (FUNC2(inode->i_mode)) {
		struct dentry *alias;
		FUNC18(&fc->inst_mutex);
		alias = FUNC3(inode);
		if (alias) {
			/* New directory must have moved since mkdir */
			FUNC19(&fc->inst_mutex);
			FUNC5(alias);
			FUNC16(inode);
			return -EBUSY;
		}
		FUNC4(entry, inode);
		FUNC19(&fc->inst_mutex);
	} else
		FUNC4(entry, inode);

	FUNC7(entry, &outarg);
	FUNC10(dir);
	return 0;

 out_put_forget_req:
	FUNC11(fc, forget_req);
	return err;
}