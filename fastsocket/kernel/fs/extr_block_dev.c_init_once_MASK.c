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
struct block_device {int /*<<< orphan*/  bd_fsfreeze_mutex; int /*<<< orphan*/  bd_holder_list; int /*<<< orphan*/  bd_list; int /*<<< orphan*/  bd_inodes; int /*<<< orphan*/  bd_mutex; } ;
struct bdev_inode {int /*<<< orphan*/  vfs_inode; struct block_device bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *foo)
{
	struct bdev_inode *ei = (struct bdev_inode *) foo;
	struct block_device *bdev = &ei->bdev;

	FUNC2(bdev, 0, sizeof(*bdev));
	FUNC3(&bdev->bd_mutex);
	FUNC0(&bdev->bd_inodes);
	FUNC0(&bdev->bd_list);
#ifdef CONFIG_SYSFS
	INIT_LIST_HEAD(&bdev->bd_holder_list);
#endif
	FUNC1(&ei->vfs_inode);
	/* Initialize mutex for freeze. */
	FUNC3(&bdev->bd_fsfreeze_mutex);
}