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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {int flags; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_READONLY ; 
 int EACCES ; 
 int EROFS ; 
 int MAY_WRITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btrfs_check_acl ; 
 scalar_t__ FUNC4 (struct btrfs_root*) ; 
 int FUNC5 (struct inode*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, int mask)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	umode_t mode = inode->i_mode;

	if (mask & MAY_WRITE &&
	    (FUNC3(mode) || FUNC1(mode) || FUNC2(mode))) {
		if (FUNC4(root))
			return -EROFS;
		if (FUNC0(inode)->flags & BTRFS_INODE_READONLY)
			return -EACCES;
	}
	return FUNC5(inode, mask, btrfs_check_acl);
}