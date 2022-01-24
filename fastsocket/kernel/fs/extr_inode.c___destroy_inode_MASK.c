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
struct inode {scalar_t__ i_acl; scalar_t__ i_default_acl; } ;

/* Variables and functions */
 scalar_t__ ACL_NOT_CACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

void FUNC5(struct inode *inode)
{
	FUNC0(FUNC2(inode));
	FUNC4(inode);
	FUNC1(inode);
#ifdef CONFIG_FS_POSIX_ACL
	if (inode->i_acl && inode->i_acl != ACL_NOT_CACHED)
		posix_acl_release(inode->i_acl);
	if (inode->i_default_acl && inode->i_default_acl != ACL_NOT_CACHED)
		posix_acl_release(inode->i_default_acl);
#endif
}