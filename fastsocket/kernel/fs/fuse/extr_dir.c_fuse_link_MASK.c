#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_7__ {int numargs; TYPE_2__* args; TYPE_1__ h; } ;
struct fuse_req {TYPE_3__ in; } ;
struct fuse_link_in {int /*<<< orphan*/  oldnodeid; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_8__ {int len; struct fuse_link_in* name; } ;
struct dentry {TYPE_4__ d_name; struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_6__ {int size; struct fuse_link_in* value; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUSE_LINK ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 int FUNC2 (struct fuse_conn*,struct fuse_req*,struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 struct fuse_req* FUNC3 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct fuse_conn* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_link_in*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct dentry *entry, struct inode *newdir,
		     struct dentry *newent)
{
	int err;
	struct fuse_link_in inarg;
	struct inode *inode = entry->d_inode;
	struct fuse_conn *fc = FUNC5(inode);
	struct fuse_req *req = FUNC3(fc);
	if (FUNC0(req))
		return FUNC1(req);

	FUNC7(&inarg, 0, sizeof(inarg));
	inarg.oldnodeid = FUNC6(inode);
	req->in.h.opcode = FUSE_LINK;
	req->in.numargs = 2;
	req->in.args[0].size = sizeof(inarg);
	req->in.args[0].value = &inarg;
	req->in.args[1].size = newent->d_name.len + 1;
	req->in.args[1].value = newent->d_name.name;
	err = FUNC2(fc, req, newdir, newent, inode->i_mode);
	/* Contrary to "normal" filesystems it can happen that link
	   makes two "logical" inodes point to the same "physical"
	   inode.  We invalidate the attributes of the old one, so it
	   will reflect changes in the backing inode (link count,
	   etc.)
	*/
	if (!err || err == -EINTR)
		FUNC4(inode);
	return err;
}