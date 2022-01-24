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
struct TYPE_2__ {struct sysfs_dirent* target_sd; } ;
struct sysfs_dirent {TYPE_1__ s_symlink; struct sysfs_dirent* s_parent; } ;
struct dentry {struct sysfs_dirent* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sysfs_dirent*,struct sysfs_dirent*,char*) ; 
 int /*<<< orphan*/  sysfs_mutex ; 

__attribute__((used)) static int FUNC3(struct dentry *dentry, char * path)
{
	struct sysfs_dirent *sd = dentry->d_fsdata;
	struct sysfs_dirent *parent_sd = sd->s_parent;
	struct sysfs_dirent *target_sd = sd->s_symlink.target_sd;
	int error;

	FUNC0(&sysfs_mutex);
	error = FUNC2(parent_sd, target_sd, path);
	FUNC1(&sysfs_mutex);

	return error;
}