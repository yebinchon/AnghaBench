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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct v9fs_session_info {scalar_t__ cache; } ;
struct p9_fid {int /*<<< orphan*/  i_sb; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int name; } ;
struct dentry {int /*<<< orphan*/ * d_op; int /*<<< orphan*/  d_parent; TYPE_1__ d_name; } ;

/* Variables and functions */
 struct p9_fid* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_fid*) ; 
 int FUNC6 (struct p9_fid*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct p9_fid* FUNC7 (struct p9_fid*,int,char**,int) ; 
 int /*<<< orphan*/  v9fs_cached_dentry_operations ; 
 int /*<<< orphan*/  v9fs_dentry_operations ; 
 int FUNC8 (struct dentry*,struct p9_fid*) ; 
 struct p9_fid* FUNC9 (int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC10 (struct v9fs_session_info*,struct p9_fid*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct p9_fid *
FUNC11(struct v9fs_session_info *v9ses, struct inode *dir,
		struct dentry *dentry, char *extension, u32 perm, u8 mode)
{
	int err;
	char *name;
	struct p9_fid *dfid, *ofid, *fid;
	struct inode *inode;

	FUNC2(P9_DEBUG_VFS, "name %s\n", dentry->d_name.name);

	err = 0;
	ofid = NULL;
	fid = NULL;
	name = (char *) dentry->d_name.name;
	dfid = FUNC9(dentry->d_parent);
	if (FUNC1(dfid)) {
		err = FUNC3(dfid);
		FUNC2(P9_DEBUG_VFS, "fid clone failed %d\n", err);
		dfid = NULL;
		goto error;
	}

	/* clone a fid to use for creation */
	ofid = FUNC7(dfid, 0, NULL, 1);
	if (FUNC1(ofid)) {
		err = FUNC3(ofid);
		FUNC2(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
		ofid = NULL;
		goto error;
	}

	err = FUNC6(ofid, name, perm, mode, extension);
	if (err < 0) {
		FUNC2(P9_DEBUG_VFS, "p9_client_fcreate failed %d\n", err);
		goto error;
	}

	/* now walk from the parent so we can get unopened fid */
	fid = FUNC7(dfid, 1, &name, 0);
	if (FUNC1(fid)) {
		err = FUNC3(fid);
		FUNC2(P9_DEBUG_VFS, "p9_client_walk failed %d\n", err);
		fid = NULL;
		goto error;
	} else
		dfid = NULL;

	/* instantiate inode and assign the unopened fid to the dentry */
	inode = FUNC10(v9ses, fid, dir->i_sb);
	if (FUNC1(inode)) {
		err = FUNC3(inode);
		FUNC2(P9_DEBUG_VFS, "inode creation failed %d\n", err);
		goto error;
	}

	if (v9ses->cache)
		dentry->d_op = &v9fs_cached_dentry_operations;
	else
		dentry->d_op = &v9fs_dentry_operations;

	FUNC4(dentry, inode);
	err = FUNC8(dentry, fid);
	if (err < 0)
		goto error;

	return ofid;

error:
	if (dfid)
		FUNC5(dfid);

	if (ofid)
		FUNC5(ofid);

	if (fid)
		FUNC5(fid);

	return FUNC0(err);
}