#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct posix_acl {scalar_t__ a_count; } ;
struct inode {scalar_t__ i_uid; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  ar_posix_acl; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  CAP_FOWNER ; 
 int EACCES ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  GFS2_EATYPE_SYS ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct posix_acl*) ; 
 int FUNC3 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int XATTR_CREATE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int FUNC9 (char const*) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ ,char const*,void const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct posix_acl*,int /*<<< orphan*/ *) ; 
 struct posix_acl* FUNC13 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct posix_acl*) ; 
 int FUNC15 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int FUNC17(struct inode *inode, const char *name,
				 const void *value, size_t size, int flags)
{
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct posix_acl *acl = NULL;
	int error = 0, type;

	if (!sdp->sd_args.ar_posix_acl)
		return -EOPNOTSUPP;

	type = FUNC9(name);
	if (type < 0)
		return type;
	if (flags & XATTR_CREATE)
		return -EINVAL;
	if (type == ACL_TYPE_DEFAULT && !FUNC4(inode->i_mode))
		return value ? -EACCES : 0;
	if ((FUNC7() != inode->i_uid) && !FUNC6(CAP_FOWNER))
		return -EPERM;
	if (FUNC5(inode->i_mode))
		return -EOPNOTSUPP;

	if (!value)
		goto set_acl;

	acl = FUNC13(value, size);
	if (!acl) {
		/*
		 * acl_set_file(3) may request that we set default ACLs with
		 * zero length -- defend (gracefully) against that here.
		 */
		goto out;
	}
	if (FUNC2(acl)) {
		error = FUNC3(acl);
		goto out;
	}

	error = FUNC15(acl);
	if (error)
		goto out_release;

	error = -EINVAL;
	if (acl->a_count > FUNC0(sdp))
		goto out_release;

	if (type == ACL_TYPE_ACCESS) {
		mode_t mode = inode->i_mode;
		error = FUNC12(acl, &mode);

		if (error <= 0) {
			FUNC14(acl);
			acl = NULL;

			if (error < 0)
				return error;
		}

		error = FUNC10(inode, mode);
		if (error)
			goto out_release;
	}

set_acl:
	error = FUNC11(inode, GFS2_EATYPE_SYS, name, value, size, 0);
	if (!error) {
		if (acl)
			FUNC16(inode, type, acl);
		else
			FUNC8(inode, type);
	}
out_release:
	FUNC14(acl);
out:
	return error;
}