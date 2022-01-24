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
 int EPERM ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,int,struct posix_acl*) ; 
 struct posix_acl* FUNC4 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct posix_acl*) ; 
 int FUNC6 (struct posix_acl*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, int type, const void *value, size_t size)
{
	struct posix_acl *acl;
	int rc;

	if (!FUNC2(inode))
		return -EPERM;

	if (value) {
		acl = FUNC4(value, size);
		if (FUNC0(acl))
			return FUNC1(acl);
		if (acl) {
			rc = FUNC6(acl);
			if (rc)
				goto out;
		}
	} else {
		acl = NULL;
	}
	rc = FUNC3(inode, type, acl);
 out:
	FUNC5(acl);
	return rc;
}