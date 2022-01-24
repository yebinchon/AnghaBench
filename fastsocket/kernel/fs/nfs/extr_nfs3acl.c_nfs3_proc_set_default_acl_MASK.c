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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct posix_acl*,struct posix_acl*) ; 
 struct posix_acl* FUNC5 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct posix_acl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct posix_acl*) ; 

int FUNC8(struct inode *dir, struct inode *inode,
		mode_t mode)
{
	struct posix_acl *dfacl, *acl;
	int error = 0;

	dfacl = FUNC3(dir, ACL_TYPE_DEFAULT);
	if (FUNC0(dfacl)) {
		error = FUNC1(dfacl);
		return (error == -EOPNOTSUPP) ? 0 : error;
	}
	if (!dfacl)
		return 0;
	acl = FUNC5(dfacl, GFP_KERNEL);
	error = -ENOMEM;
	if (!acl)
		goto out_release_dfacl;
	error = FUNC6(acl, &mode);
	if (error < 0)
		goto out_release_acl;
	error = FUNC4(inode, acl, FUNC2(inode->i_mode) ?
						      dfacl : NULL);
out_release_acl:
	FUNC7(acl);
out_release_dfacl:
	FUNC7(dfacl);
	return error;
}