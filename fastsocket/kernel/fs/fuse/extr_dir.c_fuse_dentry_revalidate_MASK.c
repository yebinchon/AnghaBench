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
struct nameidata {int dummy; } ;
struct inode {int i_mode; } ;
struct TYPE_4__ {int error; } ;
struct TYPE_5__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ out; } ;
struct fuse_inode {int /*<<< orphan*/  nlookup; } ;
struct TYPE_6__ {int mode; } ;
struct fuse_entry_out {TYPE_3__ attr; int /*<<< orphan*/  nodeid; } ;
struct fuse_conn {int /*<<< orphan*/  lock; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 int S_IFMT ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,struct fuse_entry_out*) ; 
 scalar_t__ FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct fuse_conn*) ; 
 struct fuse_req* FUNC11 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC12 (struct fuse_conn*,struct fuse_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC13 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC14 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC15 (struct fuse_conn*,struct fuse_req*,int /*<<< orphan*/ ,int) ; 
 struct fuse_conn* FUNC16 (struct inode*) ; 
 struct fuse_inode* FUNC17 (struct inode*) ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 scalar_t__ FUNC20 (struct dentry*) ; 
 scalar_t__ FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct dentry *entry, struct nameidata *nd)
{
	struct inode *inode = entry->d_inode;
	int ret;

	if (inode && FUNC21(inode))
		goto invalid;
	else if (FUNC9(entry) < FUNC18()) {
		int err;
		struct fuse_entry_out outarg;
		struct fuse_conn *fc;
		struct fuse_req *req;
		struct fuse_req *forget_req;
		struct dentry *parent;
		u64 attr_version;

		/* For negative dentries, always do a fresh lookup */
		if (!inode)
			goto invalid;

		fc = FUNC16(inode);
		req = FUNC11(fc);
		ret = FUNC1(req);
		if (FUNC0(req))
			goto out;

		forget_req = FUNC11(fc);
		if (FUNC0(forget_req)) {
			FUNC13(fc, req);
			ret = -ENOMEM;
			goto out;
		}

		attr_version = FUNC10(fc);

		parent = FUNC4(entry);
		FUNC12(fc, req, FUNC19(parent->d_inode),
				 &entry->d_name, &outarg);
		FUNC14(fc, req);
		FUNC5(parent);
		err = req->out.h.error;
		FUNC13(fc, req);
		/* Zero nodeid is same as -ENOENT */
		if (!err && !outarg.nodeid)
			err = -ENOENT;
		if (!err) {
			struct fuse_inode *fi = FUNC17(inode);
			if (outarg.nodeid != FUNC19(inode)) {
				FUNC15(fc, forget_req,
						 outarg.nodeid, 1);
				goto invalid;
			}
			FUNC23(&fc->lock);
			fi->nlookup++;
			FUNC24(&fc->lock);
		}
		FUNC13(fc, forget_req);
		if (err || (outarg.attr.mode ^ inode->i_mode) & S_IFMT)
			goto invalid;

		FUNC7(inode, &outarg.attr,
				       FUNC6(&outarg),
				       attr_version);
		FUNC8(entry, &outarg);
	}
	ret = 1;
out:
	return ret;

invalid:
	ret = 0;
	if (inode && FUNC2(inode->i_mode)) {
		if (FUNC20(entry)) {
			ret = 1;
			goto out;
		}
		FUNC22(entry);
	}
	FUNC3(entry);
	goto out;
}