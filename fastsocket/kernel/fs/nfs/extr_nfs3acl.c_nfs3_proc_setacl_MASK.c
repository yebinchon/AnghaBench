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
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC3 (struct inode*,int const) ; 
 int FUNC4 (struct inode*,struct posix_acl*,struct posix_acl*) ; 
 struct posix_acl* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct posix_acl*) ; 

int FUNC7(struct inode *inode, int type, struct posix_acl *acl)
{
	struct posix_acl *alloc = NULL, *dfacl = NULL;
	int status;

	if (FUNC2(inode->i_mode)) {
		switch(type) {
			case ACL_TYPE_ACCESS:
				alloc = dfacl = FUNC3(inode,
						ACL_TYPE_DEFAULT);
				if (FUNC0(alloc))
					goto fail;
				break;

			case ACL_TYPE_DEFAULT:
				dfacl = acl;
				alloc = acl = FUNC3(inode,
						ACL_TYPE_ACCESS);
				if (FUNC0(alloc))
					goto fail;
				break;

			default:
				return -EINVAL;
		}
	} else if (type != ACL_TYPE_ACCESS)
			return -EINVAL;

	if (acl == NULL) {
		alloc = acl = FUNC5(inode->i_mode, GFP_KERNEL);
		if (FUNC0(alloc))
			goto fail;
	}
	status = FUNC4(inode, acl, dfacl);
	FUNC6(alloc);
	return status;

fail:
	return FUNC1(alloc);
}