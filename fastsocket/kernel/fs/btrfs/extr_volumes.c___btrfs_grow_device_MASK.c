#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_super_block {int dummy; } ;
struct btrfs_device {scalar_t__ total_bytes; TYPE_2__* dev_root; scalar_t__ disk_total_bytes; TYPE_1__* fs_devices; int /*<<< orphan*/  writeable; } ;
struct TYPE_6__ {struct btrfs_super_block* super_copy; } ;
struct TYPE_5__ {TYPE_3__* fs_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  total_rw_bytes; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_super_block*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct btrfs_super_block*) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_device*) ; 

__attribute__((used)) static int FUNC4(struct btrfs_trans_handle *trans,
		      struct btrfs_device *device, u64 new_size)
{
	struct btrfs_super_block *super_copy =
		device->dev_root->fs_info->super_copy;
	u64 old_total = FUNC2(super_copy);
	u64 diff = new_size - device->total_bytes;

	if (!device->writeable)
		return -EACCES;
	if (new_size <= device->total_bytes)
		return -EINVAL;

	FUNC1(super_copy, old_total + diff);
	device->fs_devices->total_rw_bytes += diff;

	device->total_bytes = new_size;
	device->disk_total_bytes = new_size;
	FUNC0(device->dev_root->fs_info);

	return FUNC3(trans, device);
}