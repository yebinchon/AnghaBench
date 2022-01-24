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
struct v9fs_session_info {scalar_t__ cache; } ;
struct super_block {int dummy; } ;
struct TYPE_4__ {scalar_t__ version; } ;
struct p9_fid {TYPE_2__ qid; struct super_block* i_sb; } ;
struct nameidata {int dummy; } ;
struct inode {TYPE_2__ qid; struct super_block* i_sb; } ;
struct TYPE_3__ {scalar_t__ name; } ;
struct dentry {int /*<<< orphan*/ * d_op; TYPE_1__ d_name; int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dentry* FUNC0 (struct p9_fid*) ; 
 struct dentry* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct p9_fid*,scalar_t__,struct dentry*,struct nameidata*) ; 
 int FUNC4 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_fid*) ; 
 struct p9_fid* FUNC7 (struct p9_fid*,int,char**,int) ; 
 int /*<<< orphan*/  v9fs_cached_dentry_operations ; 
 int /*<<< orphan*/  v9fs_dentry_operations ; 
 int FUNC8 (struct dentry*,struct p9_fid*) ; 
 struct p9_fid* FUNC9 (int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC10 (struct p9_fid*) ; 
 struct p9_fid* FUNC11 (struct v9fs_session_info*,struct p9_fid*,struct super_block*) ; 

__attribute__((used)) static struct dentry *FUNC12(struct inode *dir, struct dentry *dentry,
				      struct nameidata *nameidata)
{
	struct super_block *sb;
	struct v9fs_session_info *v9ses;
	struct p9_fid *dfid, *fid;
	struct inode *inode;
	char *name;
	int result = 0;

	FUNC3(P9_DEBUG_VFS, "dir: %p dentry: (%s) %p nameidata: %p\n",
		dir, dentry->d_name.name, dentry, nameidata);

	sb = dir->i_sb;
	v9ses = FUNC10(dir);
	dfid = FUNC9(dentry->d_parent);
	if (FUNC2(dfid))
		return FUNC0(dfid);

	name = (char *) dentry->d_name.name;
	fid = FUNC7(dfid, 1, &name, 1);
	if (FUNC2(fid)) {
		result = FUNC4(fid);
		if (result == -ENOENT) {
			FUNC5(dentry, NULL);
			return NULL;
		}

		return FUNC1(result);
	}

	inode = FUNC11(v9ses, fid, dir->i_sb);
	if (FUNC2(inode)) {
		result = FUNC4(inode);
		inode = NULL;
		goto error;
	}

	result = FUNC8(dentry, fid);
	if (result < 0)
		goto error;

	if ((fid->qid.version) && (v9ses->cache))
		dentry->d_op = &v9fs_cached_dentry_operations;
	else
		dentry->d_op = &v9fs_dentry_operations;

	FUNC5(dentry, inode);
	return NULL;

error:
	FUNC6(fid);

	return FUNC1(result);
}