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
struct inode {struct block_device* i_bdev; int /*<<< orphan*/  i_sb; } ;
struct block_device {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  bdev_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct inode *inode)
{
	struct block_device *bdev = NULL;

	FUNC3(&bdev_lock);
	if (inode->i_bdev) {
		if (!FUNC2(inode->i_sb))
			bdev = inode->i_bdev;
		FUNC0(inode);
	}
	FUNC4(&bdev_lock);

	if (bdev)
		FUNC1(bdev->bd_inode);
}