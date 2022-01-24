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
 struct posix_acl* ACL_NOT_CACHED ; 
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int ENODATA ; 
 int ENOMEM ; 
 int ENOSYS ; 
 struct posix_acl* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 int JFFS2_XPREFIX_ACL_ACCESS ; 
 int JFFS2_XPREFIX_ACL_DEFAULT ; 
 int FUNC3 (struct inode*,int,char*,char*,int) ; 
 struct posix_acl* FUNC4 (struct inode*,int) ; 
 struct posix_acl* FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static struct posix_acl *FUNC9(struct inode *inode, int type)
{
	struct posix_acl *acl;
	char *value = NULL;
	int rc, xprefix;

	acl = FUNC4(inode, type);
	if (acl != ACL_NOT_CACHED)
		return acl;

	switch (type) {
	case ACL_TYPE_ACCESS:
		xprefix = JFFS2_XPREFIX_ACL_ACCESS;
		break;
	case ACL_TYPE_DEFAULT:
		xprefix = JFFS2_XPREFIX_ACL_DEFAULT;
		break;
	default:
		FUNC0();
	}
	rc = FUNC3(inode, xprefix, "", NULL, 0);
	if (rc > 0) {
		value = FUNC7(rc, GFP_KERNEL);
		if (!value)
			return FUNC1(-ENOMEM);
		rc = FUNC3(inode, xprefix, "", value, rc);
	}
	if (rc > 0) {
		acl = FUNC5(value, rc);
	} else if (rc == -ENODATA || rc == -ENOSYS) {
		acl = NULL;
	} else {
		acl = FUNC1(rc);
	}
	if (value)
		FUNC6(value);
	if (!FUNC2(acl))
		FUNC8(inode, type, acl);
	return acl;
}