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
struct sysfs_dirent {struct sysfs_dirent* s_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysfs_dirent*) ; 
 scalar_t__ FUNC2 (int) ; 

struct sysfs_dirent *FUNC3(struct sysfs_dirent *sd)
{
	if (sd) {
		if (sd->s_parent && FUNC2(!FUNC0(sd->s_parent)))
			return NULL;
		if (FUNC2(!FUNC0(sd))) {
			FUNC1(sd->s_parent);
			return NULL;
		}
	}
	return sd;
}