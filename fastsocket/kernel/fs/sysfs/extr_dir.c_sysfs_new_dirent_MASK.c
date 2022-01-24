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
typedef  int /*<<< orphan*/  umode_t ;
struct sysfs_dirent {char const* s_name; int s_flags; int /*<<< orphan*/  s_mode; int /*<<< orphan*/  s_active; int /*<<< orphan*/  s_count; int /*<<< orphan*/  s_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SYSFS_COPY_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sysfs_dirent*) ; 
 struct sysfs_dirent* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysfs_dir_cachep ; 

struct sysfs_dirent *FUNC6(const char *name, umode_t mode, int type)
{
	char *dup_name = NULL;
	struct sysfs_dirent *sd;

	if (type & SYSFS_COPY_NAME) {
		name = dup_name = FUNC4(name, GFP_KERNEL);
		if (!name)
			return NULL;
	}

	sd = FUNC3(sysfs_dir_cachep, GFP_KERNEL);
	if (!sd)
		goto err_out1;

	if (FUNC5(&sd->s_ino))
		goto err_out2;

	FUNC0(&sd->s_count, 1);
	FUNC0(&sd->s_active, 0);

	sd->s_name = name;
	sd->s_mode = mode;
	sd->s_flags = type;

	return sd;

 err_out2:
	FUNC2(sysfs_dir_cachep, sd);
 err_out1:
	FUNC1(dup_name);
	return NULL;
}