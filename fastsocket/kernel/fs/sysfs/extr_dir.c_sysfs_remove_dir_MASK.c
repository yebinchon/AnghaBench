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
 int /*<<< orphan*/  FUNC0 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_assoc_lock ; 

void FUNC3(struct kobject * kobj)
{
	struct sysfs_dirent *sd = kobj->sd;

	FUNC1(&sysfs_assoc_lock);
	kobj->sd = NULL;
	FUNC2(&sysfs_assoc_lock);

	FUNC0(sd);
}