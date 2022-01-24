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
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*,void*,size_t) ; 
 struct posix_acl* FUNC2 (struct inode*,int) ; 

int
FUNC3(struct inode *inode, struct generic_acl_operations *ops,
		int type, void *buffer, size_t size)
{
	struct posix_acl *acl;
	int error;

	acl = ops->getacl(inode, type);
	if (!acl)
		return -ENODATA;
	error = FUNC1(acl, buffer, size);
	FUNC0(acl);

	return error;
}