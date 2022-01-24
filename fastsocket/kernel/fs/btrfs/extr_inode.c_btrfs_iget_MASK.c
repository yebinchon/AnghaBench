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
struct super_block {int dummy; } ;
struct inode {int i_state; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_key {int /*<<< orphan*/  objectid; } ;
struct TYPE_2__ {int /*<<< orphan*/  location; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 int I_NEW ; 
 struct inode* FUNC2 (struct super_block*,int /*<<< orphan*/ ,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

struct inode *FUNC9(struct super_block *s, struct btrfs_key *location,
			 struct btrfs_root *root, int *new)
{
	struct inode *inode;

	inode = FUNC2(s, location->objectid, root);
	if (!inode)
		return FUNC1(-ENOMEM);

	if (inode->i_state & I_NEW) {
		FUNC0(inode)->root = root;
		FUNC7(&FUNC0(inode)->location, location, sizeof(*location));
		FUNC3(inode);
		if (!FUNC6(inode)) {
			FUNC4(inode);
			FUNC8(inode);
			if (new)
				*new = 1;
		} else {
			FUNC8(inode);
			FUNC5(inode);
			inode = FUNC1(-ESTALE);
		}
	}

	return inode;
}