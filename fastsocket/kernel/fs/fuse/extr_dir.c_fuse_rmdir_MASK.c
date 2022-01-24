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
struct TYPE_7__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_9__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_6__ out; TYPE_3__ in; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {int /*<<< orphan*/  d_inode; TYPE_4__ d_name; } ;
struct TYPE_8__ {int /*<<< orphan*/  value; scalar_t__ size; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUSE_RMDIR ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct fuse_req* FUNC3 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct fuse_conn*,struct fuse_req*) ; 
 struct fuse_conn* FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

__attribute__((used)) static int FUNC11(struct inode *dir, struct dentry *entry)
{
	int err;
	struct fuse_conn *fc = FUNC9(dir);
	struct fuse_req *req = FUNC3(fc);
	if (FUNC0(req))
		return FUNC1(req);

	req->in.h.opcode = FUSE_RMDIR;
	req->in.h.nodeid = FUNC10(dir);
	req->in.numargs = 1;
	req->in.args[0].size = entry->d_name.len + 1;
	req->in.args[0].value = entry->d_name.name;
	FUNC8(fc, req);
	err = req->out.h.error;
	FUNC7(fc, req);
	if (!err) {
		FUNC2(entry->d_inode);
		FUNC4(dir);
		FUNC6(entry);
	} else if (err == -EINTR)
		FUNC5(entry);
	return err;
}