#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct v9fs_session_info {int dummy; } ;
struct p9_fid {struct p9_fid* private_data; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ open; } ;
struct nameidata {int flags; TYPE_2__ intent; } ;
struct inode {int dummy; } ;
struct file {struct file* private_data; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int LOOKUP_OPEN ; 
 int O_RDWR ; 
 int FUNC1 (struct p9_fid*) ; 
 struct p9_fid* FUNC2 (struct nameidata*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC4 (struct v9fs_session_info*,int) ; 
 struct p9_fid* FUNC5 (struct v9fs_session_info*,struct inode*,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct v9fs_session_info*) ; 
 struct v9fs_session_info* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  v9fs_open_created ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct inode *dir, struct dentry *dentry, int mode,
		struct nameidata *nd)
{
	int err;
	u32 perm;
	int flags;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid;
	struct file *filp;

	err = 0;
	fid = NULL;
	v9ses = FUNC7(dir);
	perm = FUNC4(v9ses, mode);
	if (nd && nd->flags & LOOKUP_OPEN)
		flags = nd->intent.open.flags - 1;
	else
		flags = O_RDWR;

	fid = FUNC5(v9ses, dir, dentry, NULL, perm,
				FUNC8(flags, FUNC6(v9ses)));
	if (FUNC0(fid)) {
		err = FUNC1(fid);
		fid = NULL;
		goto error;
	}

	/* if we are opening a file, assign the open fid to the file */
	if (nd && nd->flags & LOOKUP_OPEN) {
		filp = FUNC2(nd, dentry, v9fs_open_created);
		if (FUNC0(filp)) {
			err = FUNC1(filp);
			goto error;
		}

		filp->private_data = fid;
	} else
		FUNC3(fid);

	return 0;

error:
	if (fid)
		FUNC3(fid);

	return err;
}