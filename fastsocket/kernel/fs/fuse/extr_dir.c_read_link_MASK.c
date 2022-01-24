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
struct TYPE_8__ {int error; } ;
struct TYPE_10__ {int argvar; int numargs; TYPE_4__* args; TYPE_3__ h; } ;
struct TYPE_6__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_7__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_5__ out; TYPE_2__ in; } ;
struct fuse_conn {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_9__ {size_t size; char* value; } ;

/* Variables and functions */
 int ENOMEM ; 
 char* FUNC0 (struct fuse_req*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUSE_READLINK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct fuse_req*) ; 
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 struct fuse_req* FUNC5 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct fuse_conn*,struct fuse_req*) ; 
 struct fuse_conn* FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

__attribute__((used)) static char *FUNC11(struct dentry *dentry)
{
	struct inode *inode = dentry->d_inode;
	struct fuse_conn *fc = FUNC9(inode);
	struct fuse_req *req = FUNC5(fc);
	char *link;

	if (FUNC2(req))
		return FUNC0(req);

	link = (char *) FUNC3(GFP_KERNEL);
	if (!link) {
		link = FUNC1(-ENOMEM);
		goto out;
	}
	req->in.h.opcode = FUSE_READLINK;
	req->in.h.nodeid = FUNC10(inode);
	req->out.argvar = 1;
	req->out.numargs = 1;
	req->out.args[0].size = PAGE_SIZE - 1;
	req->out.args[0].value = link;
	FUNC8(fc, req);
	if (req->out.h.error) {
		FUNC4((unsigned long) link);
		link = FUNC1(req->out.h.error);
	} else
		link[req->out.args[0].size] = '\0';
 out:
	FUNC7(fc, req);
	FUNC6(inode); /* atime changed */
	return link;
}