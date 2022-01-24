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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sysfs_dirent* FUNC2 (struct sysfs_dirent*,char const*) ; 
 int /*<<< orphan*/  sysfs_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct sysfs_dirent*) ; 

void FUNC4(struct kobject *k, const char *dir, const char *attr)
{
	struct sysfs_dirent *sd = k->sd;

	FUNC0(&sysfs_mutex);

	if (sd && dir)
		sd = FUNC2(sd, dir);
	if (sd && attr)
		sd = FUNC2(sd, attr);
	if (sd)
		FUNC3(sd);

	FUNC1(&sysfs_mutex);
}