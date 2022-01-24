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
typedef  int /*<<< orphan*/  u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_path*) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,void*,unsigned long,int /*<<< orphan*/ ) ; 

int FUNC6(struct btrfs_trans_handle *trans, struct btrfs_root
		      *root, struct btrfs_key *cpu_key, void *data, u32
		      data_size)
{
	int ret = 0;
	struct btrfs_path *path;
	struct extent_buffer *leaf;
	unsigned long ptr;

	path = FUNC0();
	if (!path)
		return -ENOMEM;
	ret = FUNC2(trans, root, path, cpu_key, data_size);
	if (!ret) {
		leaf = path->nodes[0];
		ptr = FUNC3(leaf, path->slots[0]);
		FUNC5(leaf, data, ptr, data_size);
		FUNC4(leaf);
	}
	FUNC1(path);
	return ret;
}