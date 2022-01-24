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
typedef  int umode_t ;
struct dentry {struct configfs_dirent* d_fsdata; int /*<<< orphan*/ * d_op; } ;
struct configfs_symlink {int dummy; } ;
struct configfs_dirent {int /*<<< orphan*/  s_sibling; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIGFS_ITEM_LINK ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int FUNC0 (struct dentry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  configfs_dentry_ops ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int FUNC1 (struct configfs_dirent*,struct dentry*,struct configfs_symlink*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  init_symlink ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct configfs_symlink *sl,
			 struct dentry *parent,
			 struct dentry *dentry)
{
	int err = 0;
	umode_t mode = S_IFLNK | S_IRWXUGO;

	err = FUNC1(parent->d_fsdata, dentry, sl, mode,
				   CONFIGFS_ITEM_LINK);
	if (!err) {
		err = FUNC0(dentry, mode, init_symlink);
		if (!err)
			dentry->d_op = &configfs_dentry_ops;
		else {
			struct configfs_dirent *sd = dentry->d_fsdata;
			if (sd) {
				FUNC4(&configfs_dirent_lock);
				FUNC3(&sd->s_sibling);
				FUNC5(&configfs_dirent_lock);
				FUNC2(sd);
			}
		}
	}
	return err;
}