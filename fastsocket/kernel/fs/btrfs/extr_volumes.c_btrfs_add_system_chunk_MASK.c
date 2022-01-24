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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct btrfs_super_block {int /*<<< orphan*/ * sys_chunk_array; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;
typedef  struct btrfs_disk_key btrfs_chunk ;
typedef  int /*<<< orphan*/  disk_key ;
struct TYPE_2__ {struct btrfs_super_block* super_copy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_SYSTEM_CHUNK_ARRAY_SIZE ; 
 int EFBIG ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_disk_key*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_super_block*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct btrfs_super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct btrfs_disk_key*,int) ; 

__attribute__((used)) static int FUNC4(struct btrfs_root *root,
			   struct btrfs_key *key,
			   struct btrfs_chunk *chunk, int item_size)
{
	struct btrfs_super_block *super_copy = root->fs_info->super_copy;
	struct btrfs_disk_key disk_key;
	u32 array_size;
	u8 *ptr;

	array_size = FUNC2(super_copy);
	if (array_size + item_size > BTRFS_SYSTEM_CHUNK_ARRAY_SIZE)
		return -EFBIG;

	ptr = super_copy->sys_chunk_array + array_size;
	FUNC0(&disk_key, key);
	FUNC3(ptr, &disk_key, sizeof(disk_key));
	ptr += sizeof(disk_key);
	FUNC3(ptr, chunk, item_size);
	item_size += sizeof(disk_key);
	FUNC1(super_copy, array_size + item_size);
	return 0;
}