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
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 struct posix_acl* ACL_NOT_CACHED ; 
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int ENODATA ; 
 int ENOMEM ; 
 int ENOSYS ; 
 struct posix_acl* FUNC1 (int) ; 
 int EXT4_XATTR_INDEX_POSIX_ACL_ACCESS ; 
 int EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 int /*<<< orphan*/  POSIX_ACL ; 
 struct posix_acl* FUNC3 (char*,int) ; 
 int FUNC4 (struct inode*,int,char*,char*,int) ; 
 struct posix_acl* FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct posix_acl *
FUNC10(struct inode *inode, int type)
{
	int name_index;
	char *value = NULL;
	struct posix_acl *acl;
	int retval;

	if (!FUNC9(inode->i_sb, POSIX_ACL))
		return NULL;

	acl = FUNC5(inode, type);
	if (acl != ACL_NOT_CACHED)
		return acl;

	switch (type) {
	case ACL_TYPE_ACCESS:
		name_index = EXT4_XATTR_INDEX_POSIX_ACL_ACCESS;
		break;
	case ACL_TYPE_DEFAULT:
		name_index = EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT;
		break;
	default:
		FUNC0();
	}
	retval = FUNC4(inode, name_index, "", NULL, 0);
	if (retval > 0) {
		value = FUNC7(retval, GFP_NOFS);
		if (!value)
			return FUNC1(-ENOMEM);
		retval = FUNC4(inode, name_index, "", value, retval);
	}
	if (retval > 0)
		acl = FUNC3(value, retval);
	else if (retval == -ENODATA || retval == -ENOSYS)
		acl = NULL;
	else
		acl = FUNC1(retval);
	FUNC6(value);

	if (!FUNC2(acl))
		FUNC8(inode, type, acl);

	return acl;
}