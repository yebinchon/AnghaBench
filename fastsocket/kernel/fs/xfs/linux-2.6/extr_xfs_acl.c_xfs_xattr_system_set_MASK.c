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
struct posix_acl {scalar_t__ a_count; } ;
struct inode {scalar_t__ i_uid; int /*<<< orphan*/  i_mode; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  CAP_FOWNER ; 
 int EACCES ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int XATTR_CREATE ; 
 scalar_t__ XFS_ACL_MAX_ENTRIES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (struct posix_acl*,int /*<<< orphan*/ *) ; 
 struct posix_acl* FUNC6 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct posix_acl*) ; 
 int FUNC8 (struct posix_acl*) ; 
 int FUNC9 (char const*) ; 
 int FUNC10 (struct inode*,int,struct posix_acl*) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct inode *inode, const char *name,
		const void *value, size_t size, int flags)
{
	struct posix_acl *acl = NULL;
	int error = 0, type;

	type = FUNC9(name);
	if (type < 0)
		return type;
	if (flags & XATTR_CREATE)
		return -EINVAL;
	if (type == ACL_TYPE_DEFAULT && !FUNC2(inode->i_mode))
		return value ? -EACCES : 0;
	if ((FUNC4() != inode->i_uid) && !FUNC3(CAP_FOWNER))
		return -EPERM;

	if (!value)
		goto set_acl;

	acl = FUNC6(value, size);
	if (!acl) {
		/*
		 * acl_set_file(3) may request that we set default ACLs with
		 * zero length -- defend (gracefully) against that here.
		 */
		goto out;
	}
	if (FUNC0(acl)) {
		error = FUNC1(acl);
		goto out;
	}

	error = FUNC8(acl);
	if (error)
		goto out_release;

	error = -EINVAL;
	if (acl->a_count > XFS_ACL_MAX_ENTRIES)
		goto out_release;

	if (type == ACL_TYPE_ACCESS) {
		mode_t mode = inode->i_mode;
		error = FUNC5(acl, &mode);

		if (error <= 0) {
			FUNC7(acl);
			acl = NULL;

			if (error < 0)
				return error;
		}

		error = FUNC11(inode, mode);
		if (error)
			goto out_release;
	}

 set_acl:
	error = FUNC10(inode, type, acl);
 out_release:
	FUNC7(acl);
 out:
	return error;
}