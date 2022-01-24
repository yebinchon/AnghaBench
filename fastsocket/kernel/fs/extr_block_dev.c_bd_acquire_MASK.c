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
struct inode {int /*<<< orphan*/  i_devices; int /*<<< orphan*/  i_mapping; struct block_device* i_bdev; int /*<<< orphan*/  i_rdev; } ;
struct block_device {int /*<<< orphan*/  bd_inodes; TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bdev_lock ; 
 struct block_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct block_device *FUNC5(struct inode *inode)
{
	struct block_device *bdev;

	FUNC3(&bdev_lock);
	bdev = inode->i_bdev;
	if (bdev) {
		FUNC0(&bdev->bd_inode->i_count);
		FUNC4(&bdev_lock);
		return bdev;
	}
	FUNC4(&bdev_lock);

	bdev = FUNC1(inode->i_rdev);
	if (bdev) {
		FUNC3(&bdev_lock);
		if (!inode->i_bdev) {
			/*
			 * We take an additional bd_inode->i_count for inode,
			 * and it's released in clear_inode() of inode.
			 * So, we can access it via ->i_mapping always
			 * without igrab().
			 */
			FUNC0(&bdev->bd_inode->i_count);
			inode->i_bdev = bdev;
			inode->i_mapping = bdev->bd_inode->i_mapping;
			FUNC2(&inode->i_devices, &bdev->bd_inodes);
		}
		FUNC4(&bdev_lock);
	}
	return bdev;
}