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
struct sysfs_dirent {char* s_name; struct sysfs_dirent* s_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static char *FUNC1(struct sysfs_dirent *sd, char *path)
{
	if (sd->s_parent) {
		FUNC1(sd->s_parent, path);
		FUNC0(path, "/");
	}
	FUNC0(path, sd->s_name);
	return path;
}