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
struct vfsmount {int dummy; } ;
struct TYPE_4__ {struct vfsmount* mnt; struct dentry* dentry; } ;
struct nameidata {TYPE_2__ path; } ;
struct inode {int dummy; } ;
struct dentry {scalar_t__ d_inode; TYPE_1__* d_op; } ;
struct TYPE_3__ {int (* d_revalidate ) (struct dentry*,struct nameidata*) ;} ;

/* Variables and functions */
 struct dentry* FUNC0 (struct dentry*) ; 
 struct vfsmount* FUNC1 (struct dentry*) ; 
 struct inode* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct dentry*,struct nameidata*) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry, struct nameidata *nd)
{
	struct dentry *lower_dentry = FUNC0(dentry);
	struct vfsmount *lower_mnt = FUNC1(dentry);
	struct dentry *dentry_save;
	struct vfsmount *vfsmount_save;
	int rc = 1;

	if (!lower_dentry->d_op || !lower_dentry->d_op->d_revalidate)
		goto out;
	dentry_save = nd->path.dentry;
	vfsmount_save = nd->path.mnt;
	nd->path.dentry = lower_dentry;
	nd->path.mnt = lower_mnt;
	rc = lower_dentry->d_op->d_revalidate(lower_dentry, nd);
	nd->path.dentry = dentry_save;
	nd->path.mnt = vfsmount_save;
	if (dentry->d_inode) {
		struct inode *lower_inode =
			FUNC2(dentry->d_inode);

		FUNC3(dentry->d_inode, lower_inode, NULL);
	}
out:
	return rc;
}