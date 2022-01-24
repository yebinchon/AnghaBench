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
struct configfs_subsystem {int dummy; } ;
struct configfs_dirent {int s_dependent_count; } ;
struct config_item {TYPE_1__* ci_dentry; } ;
struct TYPE_2__ {struct configfs_dirent* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct configfs_subsystem *subsys,
			    struct config_item *target)
{
	struct configfs_dirent *sd;

	/*
	 * Since we can trust everything is pinned, we just need
	 * configfs_dirent_lock.
	 */
	FUNC1(&configfs_dirent_lock);

	sd = target->ci_dentry->d_fsdata;
	FUNC0(sd->s_dependent_count < 1);

	sd->s_dependent_count -= 1;

	/*
	 * After this unlock, we cannot trust the item to stay alive!
	 * DO NOT REFERENCE item after this unlock.
	 */
	FUNC2(&configfs_dirent_lock);
}