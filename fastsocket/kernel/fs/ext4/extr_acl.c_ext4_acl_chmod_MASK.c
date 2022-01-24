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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
typedef  struct posix_acl handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  POSIX_ACL ; 
 int FUNC2 (struct posix_acl*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct posix_acl*) ; 
 int FUNC7 (struct posix_acl*,struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC11 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC14(struct inode *inode)
{
	struct posix_acl *acl, *clone;
	int error;

	if (FUNC3(inode->i_mode))
		return -EOPNOTSUPP;
	if (!FUNC13(inode->i_sb, POSIX_ACL))
		return 0;
	acl = FUNC4(inode, ACL_TYPE_ACCESS);
	if (FUNC1(acl) || !acl)
		return FUNC2(acl);
	clone = FUNC11(acl, GFP_KERNEL);
	FUNC12(acl);
	if (!clone)
		return -ENOMEM;
	error = FUNC10(clone, inode->i_mode);
	if (!error) {
		handle_t *handle;
		int retries = 0;

	retry:
		handle = FUNC5(inode,
				FUNC0(inode->i_sb));
		if (FUNC1(handle)) {
			error = FUNC2(handle);
			FUNC9(inode->i_sb, error);
			goto out;
		}
		error = FUNC7(handle, inode, ACL_TYPE_ACCESS, clone);
		FUNC6(handle);
		if (error == -ENOSPC &&
		    FUNC8(inode->i_sb, &retries))
			goto retry;
	}
out:
	FUNC12(clone);
	return error;
}