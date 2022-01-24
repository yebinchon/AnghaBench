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
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 char* POSIX_ACL_XATTR_ACCESS ; 
 char* POSIX_ACL_XATTR_DEFAULT ; 
 struct posix_acl* FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC6 (char*,int) ; 
 int FUNC7 (struct inode*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int,struct posix_acl*) ; 

struct posix_acl *FUNC9(struct inode *inode, int type)
{
	char *name, *value;
	struct posix_acl *acl;
	int size;
	int retval;

	acl = FUNC3(inode, type);
	if (acl != ACL_NOT_CACHED)
		return acl;

	switch (type) {
	case ACL_TYPE_ACCESS:
		name = POSIX_ACL_XATTR_ACCESS;
		break;
	case ACL_TYPE_DEFAULT:
		name = POSIX_ACL_XATTR_DEFAULT;
		break;
	default:
		FUNC0();
	}

	size = FUNC7(inode, name, NULL, 0);
	if (size < 0) {
		if (size == -ENODATA || size == -ENOSYS) {
			FUNC8(inode, type, NULL);
			return NULL;
		}
		return FUNC1(size);
	}

	value = FUNC5(size, GFP_NOFS);
	if (!value)
		return FUNC1(-ENOMEM);

	retval = FUNC7(inode, name, value, size);
	if (retval == -ENODATA || retval == -ENOSYS) {
		/* This shouldn't actually happen as it should have
		   been caught above.. but just in case */
		acl = NULL;
	} else if (retval < 0) {
		acl = FUNC1(retval);
	} else {
		acl = FUNC6(value, retval);
	}
	if (!FUNC2(acl))
		FUNC8(inode, type, acl);

	FUNC4(value);
	return acl;
}