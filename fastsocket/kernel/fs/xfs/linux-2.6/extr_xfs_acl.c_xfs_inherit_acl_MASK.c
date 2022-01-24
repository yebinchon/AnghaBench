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
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC1 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct posix_acl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct posix_acl*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct inode *inode, struct posix_acl *default_acl)
{
	struct posix_acl *clone;
	mode_t mode;
	int error = 0, inherit = 0;

	if (FUNC0(inode->i_mode)) {
		error = FUNC4(inode, ACL_TYPE_DEFAULT, default_acl);
		if (error)
			return error;
	}

	clone = FUNC1(default_acl, GFP_KERNEL);
	if (!clone)
		return -ENOMEM;

	mode = inode->i_mode;
	error = FUNC2(clone, &mode);
	if (error < 0)
		goto out_release_clone;

	/*
	 * If posix_acl_create_masq returns a positive value we need to
	 * inherit a permission that can't be represented using the Unix
	 * mode bits and we actually need to set an ACL.
	 */
	if (error > 0)
		inherit = 1;

	error = FUNC5(inode, mode);
	if (error)
		goto out_release_clone;

	if (inherit)
		error = FUNC4(inode, ACL_TYPE_ACCESS, clone);

 out_release_clone:
	FUNC3(clone);
	return error;
}