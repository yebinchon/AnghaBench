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
struct vfsmount {int dummy; } ;
struct TYPE_2__ {struct vfsmount* mnt; struct dentry* dentry; } ;
struct nameidata {TYPE_1__ path; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct dentry*) ; 
 struct vfsmount* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct inode*,struct dentry*,int,struct nameidata*) ; 

__attribute__((used)) static int
FUNC3(struct inode *lower_dir_inode,
				struct dentry *dentry, int mode,
				struct nameidata *nd)
{
	struct dentry *lower_dentry = FUNC0(dentry);
	struct vfsmount *lower_mnt = FUNC1(dentry);
	struct dentry *dentry_save;
	struct vfsmount *vfsmount_save;
	int rc;

	dentry_save = nd->path.dentry;
	vfsmount_save = nd->path.mnt;
	nd->path.dentry = lower_dentry;
	nd->path.mnt = lower_mnt;
	rc = FUNC2(lower_dir_inode, lower_dentry, mode, nd);
	nd->path.dentry = dentry_save;
	nd->path.mnt = vfsmount_save;
	return rc;
}