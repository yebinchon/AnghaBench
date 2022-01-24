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
struct super_block {TYPE_1__* s_root; } ;
struct inode {int /*<<< orphan*/  i_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_alias; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb, struct inode *inode)
{
	/* The mntroot acts as the dummy root dentry for this superblock */
	if (sb->s_root == NULL) {
		sb->s_root = FUNC1(inode);
		if (sb->s_root == NULL) {
			FUNC2(inode);
			return -ENOMEM;
		}
		/* Circumvent igrab(): we know the inode is not being freed */
		FUNC0(&inode->i_count);
		/*
		 * Ensure that this dentry is invisible to d_find_alias().
		 * Otherwise, it may be spliced into the tree by
		 * d_materialise_unique if a parent directory from the same
		 * filesystem gets mounted at a later time.
		 * This again causes shrink_dcache_for_umount_subtree() to
		 * Oops, since the test for IS_ROOT() will fail.
		 */
		FUNC4(&dcache_lock);
		FUNC3(&sb->s_root->d_alias);
		FUNC5(&dcache_lock);
	}
	return 0;
}