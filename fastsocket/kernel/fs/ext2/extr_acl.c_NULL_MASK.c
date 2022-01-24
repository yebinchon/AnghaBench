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
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 struct posix_acl* FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct posix_acl*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct posix_acl*) ; 

int
FUNC5(struct inode *inode, int mask)
{
	struct posix_acl *acl = FUNC2(inode, ACL_TYPE_ACCESS);

	if (FUNC0(acl))
		return FUNC1(acl);
	if (acl) {
		int error = FUNC3(inode, acl, mask);
		FUNC4(acl);
		return error;
	}

	return -EAGAIN;
}