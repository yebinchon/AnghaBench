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
struct sysfs_addrm_cxt {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct sysfs_addrm_cxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ; 
 struct sysfs_dirent* FUNC2 (struct sysfs_dirent*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ; 

int FUNC4(struct sysfs_dirent *dir_sd, const char *name)
{
	struct sysfs_addrm_cxt acxt;
	struct sysfs_dirent *sd;

	if (!dir_sd)
		return -ENOENT;

	FUNC1(&acxt, dir_sd);

	sd = FUNC2(dir_sd, name);
	if (sd)
		FUNC3(&acxt, sd);

	FUNC0(&acxt);

	if (sd)
		return 0;
	else
		return -ENOENT;
}