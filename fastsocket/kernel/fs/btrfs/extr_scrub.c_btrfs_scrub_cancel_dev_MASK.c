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
struct scrub_dev {int /*<<< orphan*/  cancel_req; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  scrub_lock; int /*<<< orphan*/  scrub_pause_wait; } ;
struct btrfs_device {struct scrub_dev* scrub_device; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct btrfs_root *root, struct btrfs_device *dev)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct scrub_dev *sdev;

	FUNC1(&fs_info->scrub_lock);
	sdev = dev->scrub_device;
	if (!sdev) {
		FUNC2(&fs_info->scrub_lock);
		return -ENOTCONN;
	}
	FUNC0(&sdev->cancel_req);
	while (dev->scrub_device) {
		FUNC2(&fs_info->scrub_lock);
		FUNC3(fs_info->scrub_pause_wait,
			   dev->scrub_device == NULL);
		FUNC1(&fs_info->scrub_lock);
	}
	FUNC2(&fs_info->scrub_lock);

	return 0;
}