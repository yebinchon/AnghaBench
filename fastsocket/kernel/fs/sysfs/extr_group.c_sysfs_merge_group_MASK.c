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
struct attribute_group {struct attribute** attrs; int /*<<< orphan*/  name; } ;
struct attribute {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  SYSFS_KOBJ_ATTR ; 
 int FUNC0 (struct sysfs_dirent*,struct attribute* const,int /*<<< orphan*/ ) ; 
 struct sysfs_dirent* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sysfs_dirent* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sysfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sysfs_dirent*) ; 

int FUNC5(struct kobject *kobj,
		       const struct attribute_group *grp)
{
	struct sysfs_dirent *dir_sd;
	int error = 0;
	struct attribute *const *attr;
	int i;

	if (grp)
		dir_sd = FUNC2(kobj->sd, grp->name);
	else
		dir_sd = FUNC1(kobj->sd);
	if (!dir_sd)
		return -ENOENT;

	for ((i = 0, attr = grp->attrs); *attr && !error; (++i, ++attr))
		error = FUNC0(dir_sd, *attr, SYSFS_KOBJ_ATTR);
	if (error) {
		while (--i >= 0)
			FUNC3(dir_sd, (*--attr)->name);
	}
	FUNC4(dir_sd);

	return error;
}