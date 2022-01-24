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
 int ENODATA ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 
 int FUNC3 (struct posix_acl*,void*,size_t) ; 
 struct posix_acl* FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, int type, void *buffer, size_t size)
{
	struct posix_acl *acl;
	int error;

	if (!FUNC5(inode->i_sb))
		return -EOPNOTSUPP;

	acl = FUNC4(inode, type);
	if (FUNC0(acl))
		return FUNC1(acl);
	if (acl == NULL)
		return -ENODATA;
	error = FUNC3(acl, buffer, size);
	FUNC2(acl);

	return error;
}