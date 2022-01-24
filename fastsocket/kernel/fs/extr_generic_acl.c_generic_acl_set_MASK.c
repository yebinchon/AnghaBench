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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct generic_acl_operations {int /*<<< orphan*/  (* setacl ) (struct inode*,int,struct posix_acl*) ;} ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct posix_acl*,int /*<<< orphan*/ *) ; 
 struct posix_acl* FUNC6 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct posix_acl*) ; 
 int FUNC8 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,struct posix_acl*) ; 

int
FUNC10(struct inode *inode, struct generic_acl_operations *ops,
		int type, const void *value, size_t size)
{
	struct posix_acl *acl = NULL;
	int error;

	if (FUNC3(inode->i_mode))
		return -EOPNOTSUPP;
	if (!FUNC4(inode))
		return -EPERM;
	if (value) {
		acl = FUNC6(value, size);
		if (FUNC0(acl))
			return FUNC1(acl);
	}
	if (acl) {
		mode_t mode;

		error = FUNC8(acl);
		if (error)
			goto failed;
		switch(type) {
			case ACL_TYPE_ACCESS:
				mode = inode->i_mode;
				error = FUNC5(acl, &mode);
				if (error < 0)
					goto failed;
				inode->i_mode = mode;
				if (error == 0) {
					FUNC7(acl);
					acl = NULL;
				}
				break;

			case ACL_TYPE_DEFAULT:
				if (!FUNC2(inode->i_mode)) {
					error = -EINVAL;
					goto failed;
				}
				break;
		}
	}
	ops->setacl(inode, type, acl);
	error = 0;
failed:
	FUNC7(acl);
	return error;
}