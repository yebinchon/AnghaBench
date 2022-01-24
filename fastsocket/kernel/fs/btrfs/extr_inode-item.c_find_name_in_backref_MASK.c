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
typedef  scalar_t__ u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_inode_ref {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct extent_buffer*,struct btrfs_inode_ref*) ; 
 unsigned long FUNC1 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct extent_buffer*,char const*,unsigned long,int) ; 

__attribute__((used)) static int FUNC4(struct btrfs_path *path, const char *name,
			 int name_len, struct btrfs_inode_ref **ref_ret)
{
	struct extent_buffer *leaf;
	struct btrfs_inode_ref *ref;
	unsigned long ptr;
	unsigned long name_ptr;
	u32 item_size;
	u32 cur_offset = 0;
	int len;

	leaf = path->nodes[0];
	item_size = FUNC2(leaf, path->slots[0]);
	ptr = FUNC1(leaf, path->slots[0]);
	while (cur_offset < item_size) {
		ref = (struct btrfs_inode_ref *)(ptr + cur_offset);
		len = FUNC0(leaf, ref);
		name_ptr = (unsigned long)(ref + 1);
		cur_offset += len + sizeof(*ref);
		if (len != name_len)
			continue;
		if (FUNC3(leaf, name, name_ptr, name_len) == 0) {
			*ref_ret = ref;
			return 1;
		}
	}
	return 0;
}