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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_fs_devices {int /*<<< orphan*/  missing_devices; int /*<<< orphan*/  num_devices; int /*<<< orphan*/  devices; } ;
struct TYPE_4__ {int /*<<< orphan*/  func; } ;
struct btrfs_device {int missing; int /*<<< orphan*/  uuid; int /*<<< orphan*/  dev_alloc_list; int /*<<< orphan*/  io_lock; struct btrfs_fs_devices* fs_devices; TYPE_2__ work; int /*<<< orphan*/  devid; int /*<<< orphan*/  dev_root; int /*<<< orphan*/  dev_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_root; struct btrfs_fs_devices* fs_devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_UUID_SIZE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct btrfs_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pending_bios_fn ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct btrfs_device *FUNC5(struct btrfs_root *root,
					    u64 devid, u8 *dev_uuid)
{
	struct btrfs_device *device;
	struct btrfs_fs_devices *fs_devices = root->fs_info->fs_devices;

	device = FUNC1(sizeof(*device), GFP_NOFS);
	if (!device)
		return NULL;
	FUNC2(&device->dev_list,
		 &fs_devices->devices);
	device->dev_root = root->fs_info->dev_root;
	device->devid = devid;
	device->work.func = pending_bios_fn;
	device->fs_devices = fs_devices;
	device->missing = 1;
	fs_devices->num_devices++;
	fs_devices->missing_devices++;
	FUNC4(&device->io_lock);
	FUNC0(&device->dev_alloc_list);
	FUNC3(device->uuid, dev_uuid, BTRFS_UUID_SIZE);
	return device;
}