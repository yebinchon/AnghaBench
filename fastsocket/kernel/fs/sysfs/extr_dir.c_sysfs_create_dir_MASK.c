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
struct sysfs_dirent {int dummy; } ;
struct kobject {struct sysfs_dirent* sd; TYPE_1__* parent; } ;
struct TYPE_2__ {struct sysfs_dirent* sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct kobject*,struct sysfs_dirent*,int /*<<< orphan*/ ,struct sysfs_dirent**) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 
 struct sysfs_dirent sysfs_root ; 

int FUNC3(struct kobject * kobj)
{
	struct sysfs_dirent *parent_sd, *sd;
	int error = 0;

	FUNC0(!kobj);

	if (kobj->parent)
		parent_sd = kobj->parent->sd;
	else
		parent_sd = &sysfs_root;

	error = FUNC1(kobj, parent_sd, FUNC2(kobj), &sd);
	if (!error)
		kobj->sd = sd;
	return error;
}