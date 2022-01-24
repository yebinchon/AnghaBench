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
typedef  struct posix_acl handle_t ;

/* Variables and functions */
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  POSIX_ACL ; 
 int FUNC2 (struct posix_acl*) ; 
 struct posix_acl* FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct posix_acl*) ; 
 int FUNC5 (struct posix_acl*,struct inode*,int,struct posix_acl*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct posix_acl* FUNC8 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct posix_acl*) ; 
 int FUNC10 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct inode *inode, int type, const void *value,
		   size_t size)
{
	handle_t *handle;
	struct posix_acl *acl;
	int error, retries = 0;

	if (!FUNC11(inode->i_sb, POSIX_ACL))
		return -EOPNOTSUPP;
	if (!FUNC7(inode))
		return -EPERM;

	if (value) {
		acl = FUNC8(value, size);
		if (FUNC1(acl))
			return FUNC2(acl);
		else if (acl) {
			error = FUNC10(acl);
			if (error)
				goto release_and_out;
		}
	} else
		acl = NULL;

retry:
	handle = FUNC3(inode, FUNC0(inode->i_sb));
	if (FUNC1(handle))
		return FUNC2(handle);
	error = FUNC5(handle, inode, type, acl);
	FUNC4(handle);
	if (error == -ENOSPC && FUNC6(inode->i_sb, &retries))
		goto retry;

release_and_out:
	FUNC9(acl);
	return error;
}