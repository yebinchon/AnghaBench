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
struct inode {int dummy; } ;
struct TYPE_11__ {int error; } ;
struct TYPE_12__ {TYPE_5__ h; } ;
struct TYPE_7__ {void* nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_9__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_6__ out; TYPE_3__ in; } ;
struct fuse_rename_in {void* newdir; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_10__ {int len; struct fuse_rename_in* name; } ;
struct dentry {struct inode* d_inode; TYPE_4__ d_name; } ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_8__ {int size; struct fuse_rename_in* value; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUSE_RENAME ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 struct fuse_req* FUNC2 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_conn*,struct fuse_req*) ; 
 struct fuse_conn* FUNC8 (struct inode*) ; 
 void* FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct fuse_rename_in*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct inode *olddir, struct dentry *oldent,
		       struct inode *newdir, struct dentry *newent)
{
	int err;
	struct fuse_rename_in inarg;
	struct fuse_conn *fc = FUNC8(olddir);
	struct fuse_req *req = FUNC2(fc);
	if (FUNC0(req))
		return FUNC1(req);

	FUNC10(&inarg, 0, sizeof(inarg));
	inarg.newdir = FUNC9(newdir);
	req->in.h.opcode = FUSE_RENAME;
	req->in.h.nodeid = FUNC9(olddir);
	req->in.numargs = 3;
	req->in.args[0].size = sizeof(inarg);
	req->in.args[0].value = &inarg;
	req->in.args[1].size = oldent->d_name.len + 1;
	req->in.args[1].value = oldent->d_name.name;
	req->in.args[2].size = newent->d_name.len + 1;
	req->in.args[2].value = newent->d_name.name;
	FUNC7(fc, req);
	err = req->out.h.error;
	FUNC6(fc, req);
	if (!err) {
		/* ctime changes */
		FUNC3(oldent->d_inode);

		FUNC3(olddir);
		if (olddir != newdir)
			FUNC3(newdir);

		/* newent will end up negative */
		if (newent->d_inode) {
			FUNC3(newent->d_inode);
			FUNC5(newent);
		}
	} else if (err == -EINTR) {
		/* If request was interrupted, DEITY only knows if the
		   rename actually took place.  If the invalidation
		   fails (e.g. some process has CWD under the renamed
		   directory), then there can be inconsistency between
		   the dcache and the real filesystem.  Tough luck. */
		FUNC4(oldent);
		if (newent->d_inode)
			FUNC4(newent);
	}

	return err;
}