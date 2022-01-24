#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct scrub_dev {int /*<<< orphan*/  stat; } ;
struct btrfs_scrub_progress {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct btrfs_device {struct scrub_dev* scrub_device; } ;
struct TYPE_4__ {TYPE_1__* fs_devices; } ;
struct TYPE_3__ {int /*<<< orphan*/  device_list_mutex; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOTCONN ; 
 struct btrfs_device* FUNC0 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_scrub_progress*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct btrfs_root *root, u64 devid,
			 struct btrfs_scrub_progress *progress)
{
	struct btrfs_device *dev;
	struct scrub_dev *sdev = NULL;

	FUNC2(&root->fs_info->fs_devices->device_list_mutex);
	dev = FUNC0(root, devid, NULL, NULL);
	if (dev)
		sdev = dev->scrub_device;
	if (sdev)
		FUNC1(progress, &sdev->stat, sizeof(*progress));
	FUNC3(&root->fs_info->fs_devices->device_list_mutex);

	return dev ? (sdev ? 0 : -ENOTCONN) : -ENODEV;
}