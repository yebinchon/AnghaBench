#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct rb_node {int dummy; } ;
struct inode {int dummy; } ;
struct btrfs_ordered_inode_tree {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct btrfs_ordered_extent {int compress_type; int /*<<< orphan*/  root_extent_list; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  list; int /*<<< orphan*/  wait; int /*<<< orphan*/  refs; int /*<<< orphan*/  flags; int /*<<< orphan*/  inode; void* bytes_left; void* disk_len; void* len; void* start; void* file_offset; } ;
struct TYPE_6__ {TYPE_2__* root; struct btrfs_ordered_inode_tree ordered_tree; } ;
struct TYPE_5__ {TYPE_1__* fs_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  ordered_extent_lock; int /*<<< orphan*/  ordered_extents; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int BTRFS_ORDERED_COMPLETE ; 
 int BTRFS_ORDERED_DIRECT ; 
 int BTRFS_ORDERED_IO_DONE ; 
 int /*<<< orphan*/  EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct btrfs_ordered_extent* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct btrfs_ordered_extent*) ; 
 struct rb_node* FUNC14 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct inode *inode, u64 file_offset,
				      u64 start, u64 len, u64 disk_len,
				      int type, int dio, int compress_type)
{
	struct btrfs_ordered_inode_tree *tree;
	struct rb_node *node;
	struct btrfs_ordered_extent *entry;

	tree = &FUNC0(inode)->ordered_tree;
	entry = FUNC5(sizeof(*entry), GFP_NOFS);
	if (!entry)
		return -ENOMEM;

	entry->file_offset = file_offset;
	entry->start = start;
	entry->len = len;
	entry->disk_len = disk_len;
	entry->bytes_left = len;
	entry->inode = FUNC3(inode);
	entry->compress_type = compress_type;
	if (type != BTRFS_ORDERED_IO_DONE && type != BTRFS_ORDERED_COMPLETE)
		FUNC8(type, &entry->flags);

	if (dio)
		FUNC8(BTRFS_ORDERED_DIRECT, &entry->flags);

	/* one ref for the tree */
	FUNC2(&entry->refs, 1);
	FUNC4(&entry->wait);
	FUNC1(&entry->list);
	FUNC1(&entry->root_extent_list);

	FUNC13(inode, entry);

	FUNC10(&tree->lock);
	node = FUNC14(&tree->tree, file_offset,
			   &entry->rb_node);
	if (node)
		FUNC7(inode, -EEXIST, file_offset);
	FUNC12(&tree->lock);

	FUNC9(&FUNC0(inode)->root->fs_info->ordered_extent_lock);
	FUNC6(&entry->root_extent_list,
		      &FUNC0(inode)->root->fs_info->ordered_extents);
	FUNC11(&FUNC0(inode)->root->fs_info->ordered_extent_lock);

	return 0;
}