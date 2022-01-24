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
struct xfs_inode {int dummy; } ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 struct xfs_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*) ; 
 int FUNC4 (struct inode*,struct posix_acl*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*) ; 
 struct posix_acl* FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct inode *inode, int mask)
{
	struct xfs_inode *ip = FUNC2(inode);
	struct posix_acl *acl;
	int error = -EAGAIN;

	FUNC6(ip);

	/*
	 * If there is no attribute fork no ACL exists on this inode and
	 * we can skip the whole exercise.
	 */
	if (!FUNC3(ip))
		return -EAGAIN;

	acl = FUNC7(inode, ACL_TYPE_ACCESS);
	if (FUNC0(acl))
		return FUNC1(acl);
	if (acl) {
		error = FUNC4(inode, acl, mask);
		FUNC5(acl);
	}

	return error;
}