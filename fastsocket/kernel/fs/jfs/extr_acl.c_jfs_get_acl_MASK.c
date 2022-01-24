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
 int EINVAL ; 
 int ENODATA ; 
 int ENOMEM ; 
 struct posix_acl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl*) ; 
 char* POSIX_ACL_XATTR_ACCESS ; 
 char* POSIX_ACL_XATTR_DEFAULT ; 
 int FUNC2 (struct inode*,char*,char*,int) ; 
 struct posix_acl* FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static struct posix_acl *FUNC8(struct inode *inode, int type)
{
	struct posix_acl *acl;
	char *ea_name;
	int size;
	char *value = NULL;

	acl = FUNC3(inode, type);
	if (acl != ACL_NOT_CACHED)
		return acl;

	switch(type) {
		case ACL_TYPE_ACCESS:
			ea_name = POSIX_ACL_XATTR_ACCESS;
			break;
		case ACL_TYPE_DEFAULT:
			ea_name = POSIX_ACL_XATTR_DEFAULT;
			break;
		default:
			return FUNC0(-EINVAL);
	}

	size = FUNC2(inode, ea_name, NULL, 0);

	if (size > 0) {
		value = FUNC5(size, GFP_KERNEL);
		if (!value)
			return FUNC0(-ENOMEM);
		size = FUNC2(inode, ea_name, value, size);
	}

	if (size < 0) {
		if (size == -ENODATA)
			acl = NULL;
		else
			acl = FUNC0(size);
	} else {
		acl = FUNC6(value, size);
	}
	FUNC4(value);
	if (!FUNC1(acl))
		FUNC7(inode, type, acl);
	return acl;
}