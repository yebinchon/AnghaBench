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
struct reiserfs_transaction_handle {int dummy; } ;
struct posix_acl {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EACCES ; 
 int EINVAL ; 
 int ENODATA ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (void*) ; 
 char* POSIX_ACL_XATTR_ACCESS ; 
 char* POSIX_ACL_XATTR_DEFAULT ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct posix_acl*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct posix_acl*,size_t*) ; 
 int FUNC8 (struct reiserfs_transaction_handle*,struct inode*,char*,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int
FUNC10(struct reiserfs_transaction_handle *th, struct inode *inode,
		 int type, struct posix_acl *acl)
{
	char *name;
	void *value = NULL;
	size_t size = 0;
	int error;

	if (FUNC3(inode->i_mode))
		return -EOPNOTSUPP;

	switch (type) {
	case ACL_TYPE_ACCESS:
		name = POSIX_ACL_XATTR_ACCESS;
		if (acl) {
			mode_t mode = inode->i_mode;
			error = FUNC6(acl, &mode);
			if (error < 0)
				return error;
			else {
				inode->i_mode = mode;
				if (error == 0)
					acl = NULL;
			}
		}
		break;
	case ACL_TYPE_DEFAULT:
		name = POSIX_ACL_XATTR_DEFAULT;
		if (!FUNC2(inode->i_mode))
			return acl ? -EACCES : 0;
		break;
	default:
		return -EINVAL;
	}

	if (acl) {
		value = FUNC7(acl, &size);
		if (FUNC0(value))
			return (int)FUNC1(value);
	}

	error = FUNC8(th, inode, name, value, size, 0);

	/*
	 * Ensure that the inode gets dirtied if we're only using
	 * the mode bits and an old ACL didn't exist. We don't need
	 * to check if the inode is hashed here since we won't get
	 * called by reiserfs_inherit_default_acl().
	 */
	if (error == -ENODATA) {
		error = 0;
		if (type == ACL_TYPE_ACCESS) {
			inode->i_ctime = CURRENT_TIME_SEC;
			FUNC5(inode);
		}
	}

	FUNC4(value);

	if (!error)
		FUNC9(inode, type, acl);

	return error;
}