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
struct kobject {struct sysfs_dirent* sd; } ;
struct attribute_group {scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (struct sysfs_dirent*,struct kobject*,struct attribute_group const*,int) ; 
 int FUNC2 (struct kobject*,scalar_t__,struct sysfs_dirent**) ; 
 int /*<<< orphan*/  FUNC3 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysfs_dirent*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct kobject *kobj, int update,
				 const struct attribute_group *grp)
{
	struct sysfs_dirent *sd;
	int error;

	FUNC0(!kobj || (!update && !kobj->sd));

	/* Updates may happen before the object has been instantiated */
	if (FUNC6(update && !kobj->sd))
		return -EINVAL;

	if (grp->name) {
		error = FUNC2(kobj, grp->name, &sd);
		if (error)
			return error;
	} else
		sd = kobj->sd;
	FUNC3(sd);
	error = FUNC1(sd, kobj, grp, update);
	if (error) {
		if (grp->name)
			FUNC5(sd);
	}
	FUNC4(sd);
	return error;
}