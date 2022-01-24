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
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC4 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct posix_acl*) ; 
 struct posix_acl* FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 

int
FUNC8(struct inode *inode)
{
	struct posix_acl *acl, *clone;
	int error;

	if (FUNC2(inode->i_mode))
		return -EOPNOTSUPP;

	acl = FUNC6(inode, ACL_TYPE_ACCESS);
	if (FUNC0(acl) || !acl)
		return FUNC1(acl);

	clone = FUNC4(acl, GFP_KERNEL);
	FUNC5(acl);
	if (!clone)
		return -ENOMEM;

	error = FUNC3(clone, inode->i_mode);
	if (!error)
		error = FUNC7(inode, ACL_TYPE_ACCESS, clone);

	FUNC5(clone);
	return error;
}