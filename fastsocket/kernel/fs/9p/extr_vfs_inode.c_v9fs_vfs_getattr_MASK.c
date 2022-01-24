#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct v9fs_session_info {scalar_t__ cache; } ;
struct p9_wstat {int dummy; } ;
typedef  struct p9_wstat p9_fid ;
struct kstat {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct p9_wstat*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct dentry*) ; 
 int FUNC2 (struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_wstat*) ; 
 struct p9_wstat* FUNC5 (struct p9_wstat*) ; 
 int FUNC6 (struct vfsmount*,struct dentry*,struct kstat*) ; 
 struct p9_wstat* FUNC7 (struct dentry*) ; 
 struct v9fs_session_info* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct p9_wstat*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct vfsmount *mnt, struct dentry *dentry,
		 struct kstat *stat)
{
	int err;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid;
	struct p9_wstat *st;

	FUNC1(P9_DEBUG_VFS, "dentry: %p\n", dentry);
	err = -EPERM;
	v9ses = FUNC8(dentry->d_inode);
	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
		return FUNC6(mnt, dentry, stat);

	fid = FUNC7(dentry);
	if (FUNC0(fid))
		return FUNC2(fid);

	st = FUNC5(fid);
	if (FUNC0(st))
		return FUNC2(st);

	FUNC9(st, dentry->d_inode, dentry->d_inode->i_sb);
		FUNC3(dentry->d_inode, stat);

	FUNC4(st);
	return 0;
}