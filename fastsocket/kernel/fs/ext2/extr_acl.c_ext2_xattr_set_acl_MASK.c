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
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int /*<<< orphan*/  POSIX_ACL ; 
 int FUNC1 (struct posix_acl*) ; 
 int FUNC2 (struct inode*,int,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct posix_acl* FUNC4 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct posix_acl*) ; 
 int FUNC6 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct inode *inode, int type, const void *value,
		   size_t size)
{
	struct posix_acl *acl;
	int error;

	if (!FUNC7(inode->i_sb, POSIX_ACL))
		return -EOPNOTSUPP;
	if (!FUNC3(inode))
		return -EPERM;

	if (value) {
		acl = FUNC4(value, size);
		if (FUNC0(acl))
			return FUNC1(acl);
		else if (acl) {
			error = FUNC6(acl);
			if (error)
				goto release_and_out;
		}
	} else
		acl = NULL;

	error = FUNC2(inode, type, acl);

release_and_out:
	FUNC5(acl);
	return error;
}