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
typedef  scalar_t__ u8 ;
typedef  void* u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ objectid; void* offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,struct btrfs_key*,scalar_t__) ; 
 int FUNC2 (struct btrfs_root*,struct btrfs_path*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(u64 inum, u64 ioff, u8 key_type,
			struct btrfs_root *fs_root, struct btrfs_path *path,
			struct btrfs_key *found_key)
{
	int ret;
	struct btrfs_key key;
	struct extent_buffer *eb;

	key.type = key_type;
	key.objectid = inum;
	key.offset = ioff;

	ret = FUNC3(NULL, fs_root, &key, path, 0, 0);
	if (ret < 0)
		return ret;

	eb = path->nodes[0];
	if (ret && path->slots[0] >= FUNC0(eb)) {
		ret = FUNC2(fs_root, path);
		if (ret)
			return ret;
		eb = path->nodes[0];
	}

	FUNC1(eb, found_key, path->slots[0]);
	if (found_key->type != key.type || found_key->objectid != key.objectid)
		return 1;

	return 0;
}