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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {struct extent_buffer** nodes; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_disk_key {int dummy; } ;
struct btrfs_dir_item {int dummy; } ;
typedef  int /*<<< orphan*/  location ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FT_XATTR ; 
 scalar_t__ FUNC0 (struct btrfs_root*) ; 
 int /*<<< orphan*/  BTRFS_XATTR_ITEM_KEY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct btrfs_dir_item*) ; 
 int FUNC3 (struct btrfs_dir_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_disk_key*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,struct btrfs_dir_item*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,struct btrfs_dir_item*,struct btrfs_disk_key*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,struct btrfs_dir_item*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,struct btrfs_dir_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,struct btrfs_dir_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_key*,int /*<<< orphan*/ ) ; 
 struct btrfs_dir_item* FUNC13 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,scalar_t__,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_key*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*,void const*,unsigned long,scalar_t__) ; 

int FUNC16(struct btrfs_trans_handle *trans,
			    struct btrfs_root *root,
			    struct btrfs_path *path, u64 objectid,
			    const char *name, u16 name_len,
			    const void *data, u16 data_len)
{
	int ret = 0;
	struct btrfs_dir_item *dir_item;
	unsigned long name_ptr, data_ptr;
	struct btrfs_key key, location;
	struct btrfs_disk_key disk_key;
	struct extent_buffer *leaf;
	u32 data_size;

	FUNC1(name_len + data_len > FUNC0(root));

	key.objectid = objectid;
	FUNC12(&key, BTRFS_XATTR_ITEM_KEY);
	key.offset = FUNC6(name, name_len);

	data_size = sizeof(*dir_item) + name_len + data_len;
	dir_item = FUNC13(trans, root, path, &key, data_size,
					name, name_len);
	if (FUNC2(dir_item))
		return FUNC3(dir_item);
	FUNC14(&location, 0, sizeof(location));

	leaf = path->nodes[0];
	FUNC4(&disk_key, &location);
	FUNC8(leaf, dir_item, &disk_key);
	FUNC11(leaf, dir_item, BTRFS_FT_XATTR);
	FUNC9(leaf, dir_item, name_len);
	FUNC10(leaf, dir_item, trans->transid);
	FUNC7(leaf, dir_item, data_len);
	name_ptr = (unsigned long)(dir_item + 1);
	data_ptr = (unsigned long)((char *)name_ptr + name_len);

	FUNC15(leaf, name, name_ptr, name_len);
	FUNC15(leaf, data, data_ptr, data_len);
	FUNC5(path->nodes[0]);

	return ret;
}