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
struct sysfs_dirent {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_fsdata; int /*<<< orphan*/ * d_op; TYPE_1__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_4__ {struct sysfs_dirent* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_dentry_ops ; 
 struct sysfs_dirent* FUNC5 (struct sysfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sysfs_dirent*) ; 
 struct inode* FUNC7 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  sysfs_mutex ; 

__attribute__((used)) static struct dentry * FUNC8(struct inode *dir, struct dentry *dentry,
				struct nameidata *nd)
{
	struct dentry *ret = NULL;
	struct sysfs_dirent *parent_sd = dentry->d_parent->d_fsdata;
	struct sysfs_dirent *sd;
	struct inode *inode;

	FUNC3(&sysfs_mutex);

	sd = FUNC5(parent_sd, dentry->d_name.name);

	/* no such entry */
	if (!sd) {
		ret = FUNC0(-ENOENT);
		goto out_unlock;
	}

	/* attach dentry and inode */
	inode = FUNC7(sd);
	if (!inode) {
		ret = FUNC0(-ENOMEM);
		goto out_unlock;
	}

	/* instantiate and hash dentry */
	dentry->d_op = &sysfs_dentry_ops;
	dentry->d_fsdata = FUNC6(sd);
	FUNC1(dentry, inode);
	FUNC2(dentry);

 out_unlock:
	FUNC4(&sysfs_mutex);
	return ret;
}