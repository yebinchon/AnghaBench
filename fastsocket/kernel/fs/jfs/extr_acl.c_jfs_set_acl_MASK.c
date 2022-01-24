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
typedef  int /*<<< orphan*/  tid_t ;
struct posix_acl {int /*<<< orphan*/  a_count; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EACCES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* POSIX_ACL_XATTR_ACCESS ; 
 char* POSIX_ACL_XATTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct inode*,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct posix_acl*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int FUNC8(tid_t tid, struct inode *inode, int type,
		       struct posix_acl *acl)
{
	char *ea_name;
	int rc;
	int size = 0;
	char *value = NULL;

	if (FUNC1(inode->i_mode))
		return -EOPNOTSUPP;

	switch(type) {
		case ACL_TYPE_ACCESS:
			ea_name = POSIX_ACL_XATTR_ACCESS;
			break;
		case ACL_TYPE_DEFAULT:
			ea_name = POSIX_ACL_XATTR_DEFAULT;
			if (!FUNC0(inode->i_mode))
				return acl ? -EACCES : 0;
			break;
		default:
			return -EINVAL;
	}
	if (acl) {
		size = FUNC6(acl->a_count);
		value = FUNC4(size, GFP_KERNEL);
		if (!value)
			return -ENOMEM;
		rc = FUNC5(acl, value, size);
		if (rc < 0)
			goto out;
	}
	rc = FUNC2(tid, inode, ea_name, value, size, 0);
out:
	FUNC3(value);

	if (!rc)
		FUNC7(inode, type, acl);

	return rc;
}