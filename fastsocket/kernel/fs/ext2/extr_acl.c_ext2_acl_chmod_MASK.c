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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int /*<<< orphan*/  POSIX_ACL ; 
 int FUNC1 (struct posix_acl*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 
 int FUNC5 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC6 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct inode *inode)
{
	struct posix_acl *acl, *clone;
        int error;

	if (!FUNC8(inode->i_sb, POSIX_ACL))
		return 0;
	if (FUNC2(inode->i_mode))
		return -EOPNOTSUPP;
	acl = FUNC3(inode, ACL_TYPE_ACCESS);
	if (FUNC0(acl) || !acl)
		return FUNC1(acl);
	clone = FUNC6(acl, GFP_KERNEL);
	FUNC7(acl);
	if (!clone)
		return -ENOMEM;
	error = FUNC5(clone, inode->i_mode);
	if (!error)
		error = FUNC4(inode, ACL_TYPE_ACCESS, clone);
	FUNC7(clone);
	return error;
}