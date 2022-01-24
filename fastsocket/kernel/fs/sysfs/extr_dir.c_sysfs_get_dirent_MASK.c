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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sysfs_dirent* FUNC2 (struct sysfs_dirent*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  sysfs_mutex ; 

struct sysfs_dirent *FUNC4(struct sysfs_dirent *parent_sd,
				      const unsigned char *name)
{
	struct sysfs_dirent *sd;

	FUNC0(&sysfs_mutex);
	sd = FUNC2(parent_sd, name);
	FUNC3(sd);
	FUNC1(&sysfs_mutex);

	return sd;
}