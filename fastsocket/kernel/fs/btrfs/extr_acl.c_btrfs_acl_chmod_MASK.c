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
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct posix_acl*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct posix_acl*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC7 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct posix_acl*) ; 

int FUNC9(struct inode *inode)
{
	struct posix_acl *acl, *clone;
	int ret = 0;

	if (FUNC3(inode->i_mode))
		return -EOPNOTSUPP;

	if (!FUNC1(inode))
		return 0;

	acl = FUNC4(inode, ACL_TYPE_ACCESS);
	if (FUNC0(acl))
		return FUNC2(acl);

	clone = FUNC7(acl, GFP_KERNEL);
	FUNC8(acl);
	if (!clone)
		return -ENOMEM;

	ret = FUNC6(clone, inode->i_mode);
	if (!ret)
		ret = FUNC5(NULL, inode, clone, ACL_TYPE_ACCESS);

	FUNC8(clone);

	return ret;
}