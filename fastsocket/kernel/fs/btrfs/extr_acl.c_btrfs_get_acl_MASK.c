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
 int /*<<< orphan*/  EIO ; 
 int ENODATA ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct posix_acl* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 char* POSIX_ACL_XATTR_ACCESS ; 
 char* POSIX_ACL_XATTR_DEFAULT ; 
 int FUNC4 (struct inode*,char const*,char*,int) ; 
 struct posix_acl* FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static struct posix_acl *FUNC10(struct inode *inode, int type)
{
	int size;
	const char *name;
	char *value = NULL;
	struct posix_acl *acl;

	if (!FUNC3(inode))
		return NULL;

	acl = FUNC5(inode, type);
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

	size = FUNC4(inode, name, "", 0);
	if (size > 0) {
		value = FUNC7(size, GFP_NOFS);
		if (!value)
			return FUNC1(-ENOMEM);
		size = FUNC4(inode, name, value, size);
	}
	if (size > 0) {
		acl = FUNC8(value, size);
	} else if (size == -ENOENT || size == -ENODATA || size == 0) {
		/* FIXME, who returns -ENOENT?  I think nobody */
		acl = NULL;
	} else {
		acl = FUNC1(-EIO);
	}
	FUNC6(value);

	if (!FUNC2(acl))
		FUNC9(inode, type, acl);

	return acl;
}