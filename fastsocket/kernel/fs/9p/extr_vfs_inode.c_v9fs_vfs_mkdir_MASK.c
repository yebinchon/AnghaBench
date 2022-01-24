#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct v9fs_session_info {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P9_OREAD ; 
 int FUNC2 (struct p9_fid*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC3 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC4 (struct v9fs_session_info*,int) ; 
 struct p9_fid* FUNC5 (struct v9fs_session_info*,struct inode*,struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC6 (struct inode*) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *dentry, int mode)
{
	int err;
	u32 perm;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid;

	FUNC1(P9_DEBUG_VFS, "name %s\n", dentry->d_name.name);
	err = 0;
	v9ses = FUNC6(dir);
	perm = FUNC4(v9ses, mode | S_IFDIR);
	fid = FUNC5(v9ses, dir, dentry, NULL, perm, P9_OREAD);
	if (FUNC0(fid)) {
		err = FUNC2(fid);
		fid = NULL;
	}

	if (fid)
		FUNC3(fid);

	return err;
}