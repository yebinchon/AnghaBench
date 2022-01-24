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
struct sysfs_dirent {char* s_name; int /*<<< orphan*/  s_parent; } ;
struct kobject {struct sysfs_dirent* sd; } ;
struct dentry {TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC3 (struct dentry*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 struct dentry* FUNC12 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC13 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  sysfs_mutex ; 
 int /*<<< orphan*/  sysfs_rename_mutex ; 
 int /*<<< orphan*/  FUNC14 (struct sysfs_dirent*) ; 

int FUNC15(struct kobject * kobj, const char *new_name)
{
	struct sysfs_dirent *sd = kobj->sd;
	struct dentry *parent = NULL;
	struct dentry *old_dentry = NULL, *new_dentry = NULL;
	const char *dup_name = NULL;
	int error;

	FUNC8(&sysfs_rename_mutex);

	error = 0;
	if (FUNC10(sd->s_name, new_name) == 0)
		goto out;	/* nothing to rename */

	/* get the original dentry */
	old_dentry = FUNC12(sd);
	if (FUNC0(old_dentry)) {
		error = FUNC1(old_dentry);
		old_dentry = NULL;
		goto out;
	}

	parent = old_dentry->d_parent;

	/* lock parent and get dentry for new name */
	FUNC8(&parent->d_inode->i_mutex);
	FUNC8(&sysfs_mutex);

	error = -EEXIST;
	if (FUNC11(sd->s_parent, new_name))
		goto out_unlock;

	error = -ENOMEM;
	new_dentry = FUNC3(parent, new_name);
	if (!new_dentry)
		goto out_unlock;

	/* rename sysfs_dirent */
	error = -ENOMEM;
	new_name = dup_name = FUNC7(new_name, GFP_KERNEL);
	if (!new_name)
		goto out_unlock;

	FUNC14(sd);
	dup_name = sd->s_name;
	sd->s_name = new_name;
	FUNC13(sd);

	/* rename */
	FUNC2(new_dentry, NULL);
	FUNC4(old_dentry, new_dentry);

	error = 0;
 out_unlock:
	FUNC9(&sysfs_mutex);
	FUNC9(&parent->d_inode->i_mutex);
	FUNC6(dup_name);
	FUNC5(old_dentry);
	FUNC5(new_dentry);
 out:
	FUNC9(&sysfs_rename_mutex);
	return error;
}