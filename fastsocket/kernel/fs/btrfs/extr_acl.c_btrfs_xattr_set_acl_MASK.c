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
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct posix_acl*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,struct posix_acl*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct posix_acl* FUNC5 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct posix_acl*) ; 
 int FUNC7 (struct posix_acl*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, int type,
			       const void *value, size_t size)
{
	int ret;
	struct posix_acl *acl = NULL;

	if (!FUNC4(inode))
		return -EPERM;

	if (!FUNC1(inode))
		return -EOPNOTSUPP;

	if (value) {
		acl = FUNC5(value, size);
		if (FUNC0(acl))
			return FUNC2(acl);

		if (acl) {
			ret = FUNC7(acl);
			if (ret)
				goto out;
		}
	}

	ret = FUNC3(NULL, inode, acl, type);
out:
	FUNC6(acl);

	return ret;
}