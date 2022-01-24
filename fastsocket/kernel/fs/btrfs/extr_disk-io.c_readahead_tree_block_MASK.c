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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  io_tree; } ;
struct TYPE_3__ {struct inode* btree_inode; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  WAIT_NONE ; 
 int /*<<< orphan*/  btree_get_extent ; 
 struct extent_buffer* FUNC1 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct btrfs_root *root, u64 bytenr, u32 blocksize,
			 u64 parent_transid)
{
	struct extent_buffer *buf = NULL;
	struct inode *btree_inode = root->fs_info->btree_inode;
	int ret = 0;

	buf = FUNC1(root, bytenr, blocksize);
	if (!buf)
		return 0;
	FUNC3(&FUNC0(btree_inode)->io_tree,
				 buf, 0, WAIT_NONE, btree_get_extent, 0);
	FUNC2(buf);
	return ret;
}