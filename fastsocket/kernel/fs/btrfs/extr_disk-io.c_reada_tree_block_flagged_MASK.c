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
struct extent_io_tree {int dummy; } ;
struct extent_buffer {int /*<<< orphan*/  bflags; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {struct extent_io_tree io_tree; } ;
struct TYPE_3__ {struct inode* btree_inode; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int EIO ; 
 int /*<<< orphan*/  EXTENT_BUFFER_CORRUPT ; 
 int /*<<< orphan*/  EXTENT_BUFFER_READAHEAD ; 
 int /*<<< orphan*/  WAIT_PAGE_LOCK ; 
 int /*<<< orphan*/  btree_get_extent ; 
 struct extent_buffer* FUNC1 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (struct extent_io_tree*,struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct btrfs_root *root, u64 bytenr, u32 blocksize,
			 int mirror_num, struct extent_buffer **eb)
{
	struct extent_buffer *buf = NULL;
	struct inode *btree_inode = root->fs_info->btree_inode;
	struct extent_io_tree *io_tree = &FUNC0(btree_inode)->io_tree;
	int ret;

	buf = FUNC1(root, bytenr, blocksize);
	if (!buf)
		return 0;

	FUNC5(EXTENT_BUFFER_READAHEAD, &buf->bflags);

	ret = FUNC4(io_tree, buf, 0, WAIT_PAGE_LOCK,
				       btree_get_extent, mirror_num);
	if (ret) {
		FUNC3(buf);
		return ret;
	}

	if (FUNC6(EXTENT_BUFFER_CORRUPT, &buf->bflags)) {
		FUNC3(buf);
		return -EIO;
	} else if (FUNC2(buf)) {
		*eb = buf;
	} else {
		FUNC3(buf);
	}
	return 0;
}