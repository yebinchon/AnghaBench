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
struct ext4_inode_info {int /*<<< orphan*/  vfs_inode; int /*<<< orphan*/  i_aio_mutex; int /*<<< orphan*/  i_data_sem; int /*<<< orphan*/  xattr_sem; int /*<<< orphan*/  i_orphan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *foo)
{
	struct ext4_inode_info *ei = (struct ext4_inode_info *) foo;

	FUNC0(&ei->i_orphan);
#ifdef CONFIG_EXT4_FS_XATTR
	init_rwsem(&ei->xattr_sem);
#endif
	FUNC1(&ei->i_data_sem);
	FUNC3(&ei->i_aio_mutex);
	FUNC2(&ei->vfs_inode);
}