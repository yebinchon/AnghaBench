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
struct generic_acl_operations {struct posix_acl* (* getacl ) (struct inode*,int) ;} ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 char* POSIX_ACL_XATTR_ACCESS ; 
 char* POSIX_ACL_XATTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl*) ; 
 int FUNC2 (char const*) ; 
 struct posix_acl* FUNC3 (struct inode*,int) ; 

size_t
FUNC4(struct inode *inode, struct generic_acl_operations *ops,
		 int type, char *list, size_t list_size)
{
	struct posix_acl *acl;
	const char *name;
	size_t size;

	acl = ops->getacl(inode, type);
	if (!acl)
		return 0;
	FUNC1(acl);

	switch(type) {
		case ACL_TYPE_ACCESS:
			name = POSIX_ACL_XATTR_ACCESS;
			break;

		case ACL_TYPE_DEFAULT:
			name = POSIX_ACL_XATTR_DEFAULT;
			break;

		default:
			return 0;
	}
	size = FUNC2(name) + 1;
	if (list && size <= list_size)
		FUNC0(list, name, size);
	return size;
}