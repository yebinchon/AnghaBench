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
struct posix_acl {int /*<<< orphan*/  a_count; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 scalar_t__ STAT_DATA_V1 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC6 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC7 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 size_t FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC16(struct inode *inode)
{
	struct posix_acl *acl, *clone;
	int error;

	if (FUNC2(inode->i_mode))
		return -EOPNOTSUPP;

	if (FUNC3(inode) == STAT_DATA_V1 ||
	    !FUNC11(inode->i_sb)) {
		return 0;
	}

	acl = FUNC10(inode, ACL_TYPE_ACCESS);
	if (!acl)
		return 0;
	if (FUNC0(acl))
		return FUNC1(acl);
	clone = FUNC7(acl, GFP_NOFS);
	FUNC8(acl);
	if (!clone)
		return -ENOMEM;
	error = FUNC6(clone, inode->i_mode);
	if (!error) {
		struct reiserfs_transaction_handle th;
		size_t size = FUNC15(inode,
					     FUNC9(clone->a_count));
		FUNC13(inode->i_sb);
		error = FUNC4(&th, inode->i_sb, size * 2);
		if (!error) {
			int error2;
			error = FUNC12(&th, inode, ACL_TYPE_ACCESS,
						 clone);
			error2 = FUNC5(&th, inode->i_sb, size * 2);
			if (error2)
				error = error2;
		}
		FUNC14(inode->i_sb);
	}
	FUNC8(clone);
	return error;
}