#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vfsmount {int dummy; } ;
struct dfs_info3_param {int dummy; } ;
struct cifs_sb_info {int /*<<< orphan*/  mountdata; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,struct dfs_info3_param const*,char**) ; 
 int /*<<< orphan*/  cifs_fs_type ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct vfsmount* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static struct vfsmount *FUNC4(struct cifs_sb_info *cifs_sb,
		const char *fullpath, const struct dfs_info3_param *ref)
{
	struct vfsmount *mnt;
	char *mountdata;
	char *devname = NULL;

	/* strip first '\' from fullpath */
	mountdata = FUNC1(cifs_sb->mountdata,
			fullpath + 1, ref, &devname);

	if (FUNC0(mountdata))
		return (struct vfsmount *)mountdata;

	mnt = FUNC3(&cifs_fs_type, 0, devname, mountdata);
	FUNC2(mountdata);
	FUNC2(devname);
	return mnt;

}