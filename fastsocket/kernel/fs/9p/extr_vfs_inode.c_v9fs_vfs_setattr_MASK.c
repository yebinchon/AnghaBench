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
struct v9fs_session_info {int dummy; } ;
struct p9_wstat {int /*<<< orphan*/  n_gid; int /*<<< orphan*/  n_uid; int /*<<< orphan*/  length; int /*<<< orphan*/  atime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  mode; } ;
struct p9_fid {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_3__ {int /*<<< orphan*/  tv_sec; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; int /*<<< orphan*/  ia_size; TYPE_2__ ia_atime; TYPE_1__ ia_mtime; int /*<<< orphan*/  ia_mode; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int ATTR_ATIME ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct p9_fid*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct iattr*) ; 
 int FUNC4 (struct p9_fid*,struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC5 (struct v9fs_session_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_wstat*) ; 
 scalar_t__ FUNC7 (struct v9fs_session_info*) ; 
 struct p9_fid* FUNC8 (struct dentry*) ; 
 struct v9fs_session_info* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dentry *dentry, struct iattr *iattr)
{
	int retval;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid;
	struct p9_wstat wstat;

	FUNC1(P9_DEBUG_VFS, "\n");
	retval = -EPERM;
	v9ses = FUNC9(dentry->d_inode);
	fid = FUNC8(dentry);
	if(FUNC0(fid))
		return FUNC2(fid);

	FUNC6(&wstat);
	if (iattr->ia_valid & ATTR_MODE)
		wstat.mode = FUNC5(v9ses, iattr->ia_mode);

	if (iattr->ia_valid & ATTR_MTIME)
		wstat.mtime = iattr->ia_mtime.tv_sec;

	if (iattr->ia_valid & ATTR_ATIME)
		wstat.atime = iattr->ia_atime.tv_sec;

	if (iattr->ia_valid & ATTR_SIZE)
		wstat.length = iattr->ia_size;

	if (FUNC7(v9ses)) {
		if (iattr->ia_valid & ATTR_UID)
			wstat.n_uid = iattr->ia_uid;

		if (iattr->ia_valid & ATTR_GID)
			wstat.n_gid = iattr->ia_gid;
	}

	retval = FUNC4(fid, &wstat);
	if (retval >= 0)
		retval = FUNC3(dentry->d_inode, iattr);

	return retval;
}