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
typedef  void* u64 ;
typedef  int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int leave_spinning; int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_key {void* offset; void* objectid; } ;
struct btrfs_inode_ref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_INODE_REF_KEY ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 void* FUNC3 (struct extent_buffer*,struct btrfs_inode_ref*) ; 
 unsigned long FUNC4 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*,char const*,int,struct btrfs_inode_ref**) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,unsigned long,unsigned long,unsigned long) ; 

int FUNC11(struct btrfs_trans_handle *trans,
			   struct btrfs_root *root,
			   const char *name, int name_len,
			   u64 inode_objectid, u64 ref_objectid, u64 *index)
{
	struct btrfs_path *path;
	struct btrfs_key key;
	struct btrfs_inode_ref *ref;
	struct extent_buffer *leaf;
	unsigned long ptr;
	unsigned long item_start;
	u32 item_size;
	u32 sub_item_len;
	int ret;
	int del_len = name_len + sizeof(*ref);

	key.objectid = inode_objectid;
	key.offset = ref_objectid;
	FUNC7(&key, BTRFS_INODE_REF_KEY);

	path = FUNC0();
	if (!path)
		return -ENOMEM;

	path->leave_spinning = 1;

	ret = FUNC6(trans, root, &key, path, -1, 1);
	if (ret > 0) {
		ret = -ENOENT;
		goto out;
	} else if (ret < 0) {
		goto out;
	}
	if (!FUNC9(path, name, name_len, &ref)) {
		ret = -ENOENT;
		goto out;
	}
	leaf = path->nodes[0];
	item_size = FUNC5(leaf, path->slots[0]);

	if (index)
		*index = FUNC3(leaf, ref);

	if (del_len == item_size) {
		ret = FUNC1(trans, root, path);
		goto out;
	}
	ptr = (unsigned long)ref;
	sub_item_len = name_len + sizeof(*ref);
	item_start = FUNC4(leaf, path->slots[0]);
	FUNC10(leaf, ptr, ptr + sub_item_len,
			      item_size - (ptr + sub_item_len - item_start));
	FUNC8(trans, root, path,
				  item_size - sub_item_len, 1);
out:
	FUNC2(path);
	return ret;
}