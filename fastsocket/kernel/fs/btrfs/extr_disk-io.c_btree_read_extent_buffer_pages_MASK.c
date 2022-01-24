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
struct extent_io_tree {int dummy; } ;
struct extent_buffer {int read_mirror; int /*<<< orphan*/  len; int /*<<< orphan*/  start; int /*<<< orphan*/  bflags; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {struct extent_io_tree io_tree; } ;
struct TYPE_3__ {int /*<<< orphan*/  mapping_tree; int /*<<< orphan*/  btree_inode; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXTENT_BUFFER_CORRUPT ; 
 int /*<<< orphan*/  WAIT_COMPLETE ; 
 int /*<<< orphan*/  btree_get_extent ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct extent_io_tree*,struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,struct extent_buffer*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_io_tree*,struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct btrfs_root *root,
					  struct extent_buffer *eb,
					  u64 start, u64 parent_transid)
{
	struct extent_io_tree *io_tree;
	int failed = 0;
	int ret;
	int num_copies = 0;
	int mirror_num = 0;
	int failed_mirror = 0;

	FUNC2(EXTENT_BUFFER_CORRUPT, &eb->bflags);
	io_tree = &FUNC0(root->fs_info->btree_inode)->io_tree;
	while (1) {
		ret = FUNC3(io_tree, eb, start,
					       WAIT_COMPLETE,
					       btree_get_extent, mirror_num);
		if (!ret && !FUNC6(io_tree, eb,
						   parent_transid, 0))
			break;

		/*
		 * This buffer's crc is fine, but its contents are corrupted, so
		 * there is no reason to read the other copies, they won't be
		 * any less wrong.
		 */
		if (FUNC5(EXTENT_BUFFER_CORRUPT, &eb->bflags))
			break;

		num_copies = FUNC1(&root->fs_info->mapping_tree,
					      eb->start, eb->len);
		if (num_copies == 1)
			break;

		if (!failed_mirror) {
			failed = 1;
			failed_mirror = eb->read_mirror;
		}

		mirror_num++;
		if (mirror_num == failed_mirror)
			mirror_num++;

		if (mirror_num > num_copies)
			break;
	}

	if (failed && !ret)
		FUNC4(root, eb, failed_mirror);

	return ret;
}