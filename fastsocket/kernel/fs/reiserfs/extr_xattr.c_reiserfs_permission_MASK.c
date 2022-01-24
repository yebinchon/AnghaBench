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
struct inode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ STAT_DATA_V1 ; 
 int FUNC1 (struct inode*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/ * reiserfs_check_acl ; 

int FUNC3(struct inode *inode, int mask)
{
	/*
	 * We don't do permission checks on the internal objects.
	 * Permissions are determined by the "owning" object.
	 */
	if (FUNC0(inode))
		return 0;

#ifdef CONFIG_REISERFS_FS_XATTR
	/*
	 * Stat data v1 doesn't support ACLs.
	 */
	if (get_inode_sd_version(inode) != STAT_DATA_V1)
		return generic_permission(inode, mask, reiserfs_check_acl);
#endif
	return FUNC1(inode, mask, NULL);
}