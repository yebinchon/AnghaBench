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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct btrfs_super_block {int /*<<< orphan*/ * sys_chunk_array; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_disk_key {int dummy; } ;
struct btrfs_chunk {int dummy; } ;
struct TYPE_2__ {struct btrfs_super_block* super_copy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CHUNK_ITEM_KEY ; 
 int EIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_key*,struct btrfs_disk_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_super_block*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct btrfs_chunk*) ; 
 scalar_t__ FUNC4 (struct btrfs_super_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct btrfs_root *root, u64 chunk_objectid, u64
			chunk_offset)
{
	struct btrfs_super_block *super_copy = root->fs_info->super_copy;
	struct btrfs_disk_key *disk_key;
	struct btrfs_chunk *chunk;
	u8 *ptr;
	int ret = 0;
	u32 num_stripes;
	u32 array_size;
	u32 len = 0;
	u32 cur;
	struct btrfs_key key;

	array_size = FUNC4(super_copy);

	ptr = super_copy->sys_chunk_array;
	cur = 0;

	while (cur < array_size) {
		disk_key = (struct btrfs_disk_key *)ptr;
		FUNC1(&key, disk_key);

		len = sizeof(*disk_key);

		if (key.type == BTRFS_CHUNK_ITEM_KEY) {
			chunk = (struct btrfs_chunk *)(ptr + len);
			num_stripes = FUNC3(chunk);
			len += FUNC0(num_stripes);
		} else {
			ret = -EIO;
			break;
		}
		if (key.objectid == chunk_objectid &&
		    key.offset == chunk_offset) {
			FUNC5(ptr, ptr + len, array_size - (cur + len));
			array_size -= len;
			FUNC2(super_copy, array_size);
		} else {
			ptr += len;
			cur += len;
		}
	}
	return ret;
}