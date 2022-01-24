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
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct posix_acl*) ; 
 int FUNC2 (struct posix_acl*) ; 
 struct posix_acl* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct posix_acl*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct posix_acl*) ; 

int FUNC6(struct inode *inode, int mask)
{
	struct posix_acl *acl;
	int error;

	acl = FUNC3(FUNC0(inode), ACL_TYPE_ACCESS);
	if (FUNC1(acl))
		return FUNC2(acl);

	if (acl) {
		error = FUNC4(inode, acl, mask);
		FUNC5(acl);
		return error;
	}

	return -EAGAIN;
}