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
struct generic_acl_operations {int /*<<< orphan*/  (* setacl ) (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ;struct posix_acl* (* getacl ) (struct inode*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC2 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct posix_acl*) ; 
 struct posix_acl* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 

int
FUNC6(struct inode *inode, struct generic_acl_operations *ops)
{
	struct posix_acl *acl, *clone;
	int error = 0;

	if (FUNC0(inode->i_mode))
		return -EOPNOTSUPP;
	acl = ops->getacl(inode, ACL_TYPE_ACCESS);
	if (acl) {
		clone = FUNC2(acl, GFP_KERNEL);
		FUNC3(acl);
		if (!clone)
			return -ENOMEM;
		error = FUNC1(clone, inode->i_mode);
		if (!error)
			ops->setacl(inode, ACL_TYPE_ACCESS, clone);
		FUNC3(clone);
	}
	return error;
}