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

/* Variables and functions */
 int FUNC0 (struct kobject*,int /*<<< orphan*/ ,char const*,struct sysfs_dirent**) ; 

int FUNC1(struct kobject *kobj, const char *name,
			struct sysfs_dirent **p_sd)
{
	return FUNC0(kobj, kobj->sd, name, p_sd);
}