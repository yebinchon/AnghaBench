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
struct sysfs_dirent {int dummy; } ;
struct kobject {int /*<<< orphan*/  sd; } ;
struct attribute {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  SYSFS_KOBJ_ATTR ; 
 int FUNC0 (struct sysfs_dirent*,struct attribute const*,int /*<<< orphan*/ ) ; 
 struct sysfs_dirent* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sysfs_dirent* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysfs_dirent*) ; 

int FUNC4(struct kobject *kobj,
		const struct attribute *attr, const char *group)
{
	struct sysfs_dirent *dir_sd;
	int error;

	if (group)
		dir_sd = FUNC2(kobj->sd, group);
	else
		dir_sd = FUNC1(kobj->sd);

	if (!dir_sd)
		return -ENOENT;

	error = FUNC0(dir_sd, attr, SYSFS_KOBJ_ATTR);
	FUNC3(dir_sd);

	return error;
}