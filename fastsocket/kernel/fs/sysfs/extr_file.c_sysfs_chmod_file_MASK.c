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
struct sysfs_dirent {int s_mode; } ;
struct kobject {int /*<<< orphan*/  sd; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct iattr {int ia_mode; int ia_valid; int /*<<< orphan*/  ia_ctime; } ;
struct dentry {struct inode* d_inode; } ;
struct attribute {int /*<<< orphan*/  name; } ;
typedef  int mode_t ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_MODE ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int S_IALLUGO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct dentry* FUNC7 (struct sysfs_dirent*) ; 
 struct sysfs_dirent* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysfs_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  sysfs_rename_mutex ; 
 int FUNC10 (struct dentry*,struct iattr*) ; 

int FUNC11(struct kobject *kobj, struct attribute *attr, mode_t mode)
{
	struct sysfs_dirent *victim_sd = NULL;
	struct dentry *victim = NULL;
	struct inode * inode;
	struct iattr newattrs;
	int rc;

	rc = -ENOENT;
	victim_sd = FUNC8(kobj->sd, attr->name);
	if (!victim_sd)
		goto out;

	FUNC5(&sysfs_rename_mutex);
	victim = FUNC7(victim_sd);
	FUNC6(&sysfs_rename_mutex);
	if (FUNC0(victim)) {
		rc = FUNC1(victim);
		victim = NULL;
		goto out;
	}

	inode = victim->d_inode;

	FUNC5(&inode->i_mutex);

	newattrs.ia_mode = (mode & S_IALLUGO) | (inode->i_mode & ~S_IALLUGO);
	newattrs.ia_valid = ATTR_MODE | ATTR_CTIME;
	newattrs.ia_ctime = FUNC2(inode->i_sb);
	rc = FUNC10(victim, &newattrs);

	if (rc == 0) {
		FUNC4(victim, newattrs.ia_valid);
		FUNC5(&sysfs_mutex);
		victim_sd->s_mode = newattrs.ia_mode;
		FUNC6(&sysfs_mutex);
	}

	FUNC6(&inode->i_mutex);
 out:
	FUNC3(victim);
	FUNC9(victim_sd);
	return rc;
}