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
typedef  int /*<<< orphan*/  tid_t ;
struct posix_acl {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct posix_acl*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC9 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct inode *inode)
{
	struct posix_acl *acl, *clone;
	int rc;

	if (FUNC3(inode->i_mode))
		return -EOPNOTSUPP;

	acl = FUNC4(inode, ACL_TYPE_ACCESS);
	if (FUNC0(acl) || !acl)
		return FUNC2(acl);

	clone = FUNC9(acl, GFP_KERNEL);
	FUNC10(acl);
	if (!clone)
		return -ENOMEM;

	rc = FUNC8(clone, inode->i_mode);
	if (!rc) {
		tid_t tid = FUNC11(inode->i_sb, 0);
		FUNC6(&FUNC1(inode)->commit_mutex);
		rc = FUNC5(tid, inode, ACL_TYPE_ACCESS, clone);
		if (!rc)
			rc = FUNC12(tid, 1, &inode, 0);
		FUNC13(tid);
		FUNC7(&FUNC1(inode)->commit_mutex);
	}

	FUNC10(clone);
	return rc;
}