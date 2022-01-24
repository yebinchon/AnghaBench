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
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 int FUNC3 (struct posix_acl*,void*,size_t) ; 
 int FUNC4 (char const*) ; 
 struct posix_acl* FUNC5 (struct inode*,int) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, const char *name,
		void *value, size_t size)
{
	struct posix_acl *acl;
	int type, error;

	type = FUNC4(name);
	if (type < 0)
		return type;

	acl = FUNC5(inode, type);
	if (FUNC0(acl))
		return FUNC1(acl);
	if (acl == NULL)
		return -ENODATA;

	error = FUNC3(acl, value, size);
	FUNC2(acl);

	return error;
}