#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysfs_dirent {struct sysfs_dirent* s_parent; int /*<<< orphan*/  s_name; } ;
struct kobject {struct sysfs_dirent* sd; } ;
struct dentry {TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC4 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct sysfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sysfs_dirent*) ; 
 struct dentry* FUNC14 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC15 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  sysfs_mutex ; 
 int /*<<< orphan*/  FUNC16 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  sysfs_rename_mutex ; 
 struct sysfs_dirent sysfs_root ; 
 int /*<<< orphan*/  FUNC17 (struct sysfs_dirent*) ; 

int FUNC18(struct kobject *kobj, struct kobject *new_parent_kobj)
{
	struct sysfs_dirent *sd = kobj->sd;
	struct sysfs_dirent *new_parent_sd;
	struct dentry *old_parent, *new_parent = NULL;
	struct dentry *old_dentry = NULL, *new_dentry = NULL;
	int error;

	FUNC9(&sysfs_rename_mutex);
	FUNC0(!sd->s_parent);
	new_parent_sd = (new_parent_kobj && new_parent_kobj->sd) ?
		new_parent_kobj->sd : &sysfs_root;

	error = 0;
	if (sd->s_parent == new_parent_sd)
		goto out;	/* nothing to move */

	/* get dentries */
	old_dentry = FUNC14(sd);
	if (FUNC1(old_dentry)) {
		error = FUNC2(old_dentry);
		old_dentry = NULL;
		goto out;
	}
	old_parent = old_dentry->d_parent;

	new_parent = FUNC14(new_parent_sd);
	if (FUNC1(new_parent)) {
		error = FUNC2(new_parent);
		new_parent = NULL;
		goto out;
	}

again:
	FUNC9(&old_parent->d_inode->i_mutex);
	if (!FUNC10(&new_parent->d_inode->i_mutex)) {
		FUNC11(&old_parent->d_inode->i_mutex);
		goto again;
	}
	FUNC9(&sysfs_mutex);

	error = -EEXIST;
	if (FUNC12(new_parent_sd, sd->s_name))
		goto out_unlock;

	error = -ENOMEM;
	new_dentry = FUNC4(new_parent, sd->s_name);
	if (!new_dentry)
		goto out_unlock;

	error = 0;
	FUNC3(new_dentry, NULL);
	FUNC5(old_dentry, new_dentry);

	/* Remove from old parent's list and insert into new parent's list. */
	FUNC17(sd);
	FUNC13(new_parent_sd);
	FUNC7(old_parent->d_inode);
	FUNC16(sd->s_parent);
	sd->s_parent = new_parent_sd;
	FUNC8(new_parent->d_inode);
	FUNC15(sd);

 out_unlock:
	FUNC11(&sysfs_mutex);
	FUNC11(&new_parent->d_inode->i_mutex);
	FUNC11(&old_parent->d_inode->i_mutex);
 out:
	FUNC6(new_parent);
	FUNC6(old_dentry);
	FUNC6(new_dentry);
	FUNC11(&sysfs_rename_mutex);
	return error;
}