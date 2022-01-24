#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct qstr {scalar_t__ len; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int error; } ;
struct TYPE_5__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ out; } ;
struct TYPE_6__ {int /*<<< orphan*/  mode; } ;
struct fuse_entry_out {int /*<<< orphan*/  nodeid; TYPE_3__ attr; int /*<<< orphan*/  generation; } ;
struct fuse_conn {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 scalar_t__ FUSE_NAME_MAX ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 
 struct fuse_req* FUNC4 (struct fuse_conn*) ; 
 struct inode* FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_conn*,struct fuse_req*,int /*<<< orphan*/ ,struct qstr*,struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct fuse_conn*,struct fuse_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC11 (struct super_block*) ; 

int FUNC12(struct super_block *sb, u64 nodeid, struct qstr *name,
		     struct fuse_entry_out *outarg, struct inode **inode)
{
	struct fuse_conn *fc = FUNC11(sb);
	struct fuse_req *req;
	struct fuse_req *forget_req;
	u64 attr_version;
	int err;

	*inode = NULL;
	err = -ENAMETOOLONG;
	if (name->len > FUSE_NAME_MAX)
		goto out;

	req = FUNC4(fc);
	err = FUNC1(req);
	if (FUNC0(req))
		goto out;

	forget_req = FUNC4(fc);
	err = FUNC1(forget_req);
	if (FUNC0(forget_req)) {
		FUNC7(fc, req);
		goto out;
	}

	attr_version = FUNC3(fc);

	FUNC6(fc, req, nodeid, name, outarg);
	FUNC8(fc, req);
	err = req->out.h.error;
	FUNC7(fc, req);
	/* Zero nodeid is same as -ENOENT, but with valid timeout */
	if (err || !outarg->nodeid)
		goto out_put_forget;

	err = -EIO;
	if (!outarg->nodeid)
		goto out_put_forget;
	if (!FUNC10(outarg->attr.mode))
		goto out_put_forget;

	*inode = FUNC5(sb, outarg->nodeid, outarg->generation,
			   &outarg->attr, FUNC2(outarg),
			   attr_version);
	err = -ENOMEM;
	if (!*inode) {
		FUNC9(fc, forget_req, outarg->nodeid, 1);
		goto out;
	}
	err = 0;

 out_put_forget:
	FUNC7(fc, forget_req);
 out:
	return err;
}