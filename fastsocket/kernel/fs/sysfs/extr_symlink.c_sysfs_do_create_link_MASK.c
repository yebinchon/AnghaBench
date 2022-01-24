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
struct TYPE_2__ {struct sysfs_dirent* target_sd; } ;
struct sysfs_dirent {TYPE_1__ s_symlink; } ;
struct sysfs_addrm_cxt {int dummy; } ;
struct kobject {struct sysfs_dirent* sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFAULT ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SYSFS_KOBJ_LINK ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int FUNC1 (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysfs_addrm_cxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ; 
 int /*<<< orphan*/  sysfs_assoc_lock ; 
 struct sysfs_dirent* FUNC7 (struct sysfs_dirent*) ; 
 struct sysfs_dirent* FUNC8 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sysfs_dirent*) ; 
 struct sysfs_dirent sysfs_root ; 

__attribute__((used)) static int FUNC10(struct kobject *kobj, struct kobject *target,
				const char *name, int warn)
{
	struct sysfs_dirent *parent_sd = NULL;
	struct sysfs_dirent *target_sd = NULL;
	struct sysfs_dirent *sd = NULL;
	struct sysfs_addrm_cxt acxt;
	int error;

	FUNC0(!name);

	if (!kobj)
		parent_sd = &sysfs_root;
	else
		parent_sd = kobj->sd;

	error = -EFAULT;
	if (!parent_sd)
		goto out_put;

	/* target->sd can go away beneath us but is protected with
	 * sysfs_assoc_lock.  Fetch target_sd from it.
	 */
	FUNC2(&sysfs_assoc_lock);
	if (target->sd)
		target_sd = FUNC7(target->sd);
	FUNC3(&sysfs_assoc_lock);

	error = -ENOENT;
	if (!target_sd)
		goto out_put;

	error = -ENOMEM;
	sd = FUNC8(name, S_IFLNK|S_IRWXUGO, SYSFS_KOBJ_LINK);
	if (!sd)
		goto out_put;

	sd->s_symlink.target_sd = target_sd;
	target_sd = NULL;	/* reference is now owned by the symlink */

	FUNC6(&acxt, parent_sd);
	if (warn)
		error = FUNC4(&acxt, sd);
	else
		error = FUNC1(&acxt, sd);
	FUNC5(&acxt);

	if (error)
		goto out_put;

	return 0;

 out_put:
	FUNC9(target_sd);
	FUNC9(sd);
	return error;
}