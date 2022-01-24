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
struct extent_buffer {int dummy; } ;
struct btrfs_device {int /*<<< orphan*/  uuid; int /*<<< orphan*/  sector_size; int /*<<< orphan*/  io_width; int /*<<< orphan*/  io_align; int /*<<< orphan*/  type; int /*<<< orphan*/  bytes_used; int /*<<< orphan*/  disk_total_bytes; int /*<<< orphan*/  total_bytes; int /*<<< orphan*/  devid; } ;
struct btrfs_dev_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_UUID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*,struct btrfs_dev_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,struct btrfs_dev_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,struct btrfs_dev_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,struct btrfs_dev_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,struct btrfs_dev_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,struct btrfs_dev_item*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,struct btrfs_dev_item*) ; 
 scalar_t__ FUNC7 (struct btrfs_dev_item*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct extent_buffer *leaf,
				 struct btrfs_dev_item *dev_item,
				 struct btrfs_device *device)
{
	unsigned long ptr;

	device->devid = FUNC1(leaf, dev_item);
	device->disk_total_bytes = FUNC5(leaf, dev_item);
	device->total_bytes = device->disk_total_bytes;
	device->bytes_used = FUNC0(leaf, dev_item);
	device->type = FUNC6(leaf, dev_item);
	device->io_align = FUNC2(leaf, dev_item);
	device->io_width = FUNC3(leaf, dev_item);
	device->sector_size = FUNC4(leaf, dev_item);

	ptr = (unsigned long)FUNC7(dev_item);
	FUNC8(leaf, device->uuid, ptr, BTRFS_UUID_SIZE);
}