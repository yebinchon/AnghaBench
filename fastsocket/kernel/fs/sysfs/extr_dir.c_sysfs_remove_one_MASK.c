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
struct TYPE_2__ {struct sysfs_dirent* removed_list; } ;
struct sysfs_dirent {int s_flags; TYPE_1__ u; } ;
struct sysfs_addrm_cxt {int /*<<< orphan*/  cnt; scalar_t__ parent_inode; struct sysfs_dirent* removed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SYSFS_DIR ; 
 int SYSFS_FLAG_REMOVED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysfs_dirent*) ; 

void FUNC4(struct sysfs_addrm_cxt *acxt, struct sysfs_dirent *sd)
{
	FUNC0(sd->s_flags & SYSFS_FLAG_REMOVED);

	FUNC3(sd);

	sd->s_flags |= SYSFS_FLAG_REMOVED;
	sd->u.removed_list = acxt->removed;
	acxt->removed = sd;

	if (FUNC2(sd) == SYSFS_DIR && acxt->parent_inode)
		FUNC1(acxt->parent_inode);

	acxt->cnt++;
}