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
struct iattr {int /*<<< orphan*/  ia_mode; int /*<<< orphan*/  ia_valid; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int /*<<< orphan*/  ATTR_MODE ; 
 int EACCES ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int JFFS2_XPREFIX_ACL_ACCESS ; 
 int JFFS2_XPREFIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int,struct posix_acl*) ; 
 int FUNC3 (struct inode*,struct iattr*) ; 
 int FUNC4 (struct posix_acl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, int type, struct posix_acl *acl)
{
	int rc, xprefix;

	if (FUNC1(inode->i_mode))
		return -EOPNOTSUPP;

	switch (type) {
	case ACL_TYPE_ACCESS:
		xprefix = JFFS2_XPREFIX_ACL_ACCESS;
		if (acl) {
			mode_t mode = inode->i_mode;
			rc = FUNC4(acl, &mode);
			if (rc < 0)
				return rc;
			if (inode->i_mode != mode) {
				struct iattr attr;

				attr.ia_valid = ATTR_MODE;
				attr.ia_mode = mode;
				rc = FUNC3(inode, &attr);
				if (rc < 0)
					return rc;
			}
			if (rc == 0)
				acl = NULL;
		}
		break;
	case ACL_TYPE_DEFAULT:
		xprefix = JFFS2_XPREFIX_ACL_DEFAULT;
		if (!FUNC0(inode->i_mode))
			return acl ? -EACCES : 0;
		break;
	default:
		return -EINVAL;
	}
	rc = FUNC2(inode, xprefix, acl);
	if (!rc)
		FUNC5(inode, type, acl);
	return rc;
}