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
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,size_t) ; 
 struct posix_acl* FUNC5 (void const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct posix_acl*) ; 
 int FUNC7 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct reiserfs_transaction_handle*,struct inode*,int,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*) ; 
 int FUNC13 (struct inode*,size_t) ; 

__attribute__((used)) static int
FUNC14(struct inode *inode, int type, const void *value, size_t size)
{
	struct posix_acl *acl;
	int error, error2;
	struct reiserfs_transaction_handle th;
	size_t jcreate_blocks;
	if (!FUNC8(inode->i_sb))
		return -EOPNOTSUPP;
	if (!FUNC2(inode))
		return -EPERM;

	if (value) {
		acl = FUNC5(value, size);
		if (FUNC0(acl)) {
			return FUNC1(acl);
		} else if (acl) {
			error = FUNC7(acl);
			if (error)
				goto release_and_out;
		}
	} else
		acl = NULL;

	/* Pessimism: We can't assume that anything from the xattr root up
	 * has been created. */

	jcreate_blocks = FUNC12(inode) +
			 FUNC13(inode, size) * 2;

	FUNC10(inode->i_sb);
	error = FUNC3(&th, inode->i_sb, jcreate_blocks);
	if (error == 0) {
		error = FUNC9(&th, inode, type, acl);
		error2 = FUNC4(&th, inode->i_sb, jcreate_blocks);
		if (error2)
			error = error2;
	}
	FUNC11(inode->i_sb);

      release_and_out:
	FUNC6(acl);
	return error;
}