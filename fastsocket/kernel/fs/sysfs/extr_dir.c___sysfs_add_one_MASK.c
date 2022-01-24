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
struct sysfs_dirent {int /*<<< orphan*/  s_parent; int /*<<< orphan*/  s_name; } ;
struct sysfs_addrm_cxt {int /*<<< orphan*/  cnt; scalar_t__ parent_inode; int /*<<< orphan*/  parent_sd; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ SYSFS_DIR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sysfs_dirent*) ; 
 scalar_t__ FUNC4 (struct sysfs_dirent*) ; 

int FUNC5(struct sysfs_addrm_cxt *acxt, struct sysfs_dirent *sd)
{
	if (FUNC1(acxt->parent_sd, sd->s_name))
		return -EEXIST;

	sd->s_parent = FUNC2(acxt->parent_sd);

	if (FUNC4(sd) == SYSFS_DIR && acxt->parent_inode)
		FUNC0(acxt->parent_inode);

	acxt->cnt++;

	FUNC3(sd);

	return 0;
}