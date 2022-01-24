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
 int ENODATA ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 struct posix_acl* FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct posix_acl*) ; 
 int FUNC4 (struct posix_acl*,void*,size_t) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, int type, void *buffer, size_t size)
{
	struct posix_acl *acl;
	int rc;

	acl = FUNC2(inode, type);
	if (FUNC0(acl))
		return FUNC1(acl);
	if (!acl)
		return -ENODATA;
	rc = FUNC4(acl, buffer, size);
	FUNC3(acl);

	return rc;
}