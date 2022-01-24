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
struct posix_acl {int /*<<< orphan*/  a_count; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct posix_acl*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  i_has_xattr_dir ; 
 int /*<<< orphan*/  FUNC4 (struct posix_acl*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,int) ; 

int FUNC9(struct inode *inode)
{
	struct posix_acl *acl;
	int nblocks = 0;

	if (FUNC1(inode))
		return 0;

	acl = FUNC6(inode, ACL_TYPE_DEFAULT);

	if (acl && !FUNC0(acl)) {
		int size = FUNC5(acl->a_count);

		/* Other xattrs can be created during inode creation. We don't
		 * want to claim too many blocks, so we check to see if we
		 * we need to create the tree to the xattrs, and then we
		 * just want two files. */
		nblocks = FUNC7(inode);
		nblocks += FUNC2(inode->i_sb);

		FUNC3(inode)->i_flags |= i_has_xattr_dir;

		/* We need to account for writes + bitmaps for two files */
		nblocks += FUNC8(inode, size) * 4;
		FUNC4(acl);
	}

	return nblocks;
}