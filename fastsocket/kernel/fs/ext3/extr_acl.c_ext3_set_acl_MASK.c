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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ctime; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EACCES ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EXT3_XATTR_INDEX_POSIX_ACL_ACCESS ; 
 int EXT3_XATTR_INDEX_POSIX_ACL_DEFAULT ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct posix_acl*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,int,char*,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int FUNC8 (struct posix_acl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int
FUNC10(handle_t *handle, struct inode *inode, int type,
	     struct posix_acl *acl)
{
	int name_index;
	void *value = NULL;
	size_t size = 0;
	int error;

	if (FUNC3(inode->i_mode))
		return -EOPNOTSUPP;

	switch(type) {
		case ACL_TYPE_ACCESS:
			name_index = EXT3_XATTR_INDEX_POSIX_ACL_ACCESS;
			if (acl) {
				mode_t mode = inode->i_mode;
				error = FUNC8(acl, &mode);
				if (error < 0)
					return error;
				else {
					inode->i_mode = mode;
					inode->i_ctime = CURRENT_TIME_SEC;
					FUNC5(handle, inode);
					if (error == 0)
						acl = NULL;
				}
			}
			break;

		case ACL_TYPE_DEFAULT:
			name_index = EXT3_XATTR_INDEX_POSIX_ACL_DEFAULT;
			if (!FUNC2(inode->i_mode))
				return acl ? -EACCES : 0;
			break;

		default:
			return -EINVAL;
	}
	if (acl) {
		value = FUNC4(acl, &size);
		if (FUNC0(value))
			return (int)FUNC1(value);
	}

	error = FUNC6(handle, inode, name_index, "",
				      value, size, 0);

	FUNC7(value);

	if (!error)
		FUNC9(inode, type, acl);

	return error;
}