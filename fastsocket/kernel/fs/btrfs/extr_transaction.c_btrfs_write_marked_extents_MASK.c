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
typedef  scalar_t__ u64 ;
struct extent_io_tree {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {TYPE_1__* btree_inode; } ;
struct TYPE_3__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_NEED_WAIT ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct extent_io_tree*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct address_space*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_io_tree*,scalar_t__,scalar_t__*,scalar_t__*,int) ; 

int FUNC4(struct btrfs_root *root,
			       struct extent_io_tree *dirty_pages, int mark)
{
	int err = 0;
	int werr = 0;
	struct address_space *mapping = root->fs_info->btree_inode->i_mapping;
	u64 start = 0;
	u64 end;

	while (!FUNC3(dirty_pages, start, &start, &end,
				      mark)) {
		FUNC1(dirty_pages, start, end, EXTENT_NEED_WAIT, mark,
				   GFP_NOFS);
		err = FUNC2(mapping, start, end);
		if (err)
			werr = err;
		FUNC0();
		start = end + 1;
	}
	if (err)
		werr = err;
	return werr;
}