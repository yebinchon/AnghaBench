#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct extent_buffer {int /*<<< orphan*/  len; int /*<<< orphan*/  start; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_mapping_tree {int dummy; } ;
struct TYPE_2__ {struct btrfs_mapping_tree mapping_tree; } ;

/* Variables and functions */
 scalar_t__ PAGE_CACHE_SIZE ; 
 struct page* FUNC0 (struct extent_buffer*,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btrfs_mapping_tree*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct page*,int) ; 

int FUNC3(struct btrfs_root *root, struct extent_buffer *eb,
			 int mirror_num)
{
	struct btrfs_mapping_tree *map_tree = &root->fs_info->mapping_tree;
	u64 start = eb->start;
	unsigned long i, num_pages = FUNC1(eb->start, eb->len);
	int ret = 0;

	for (i = 0; i < num_pages; i++) {
		struct page *p = FUNC0(eb, i);
		ret = FUNC2(map_tree, start, PAGE_CACHE_SIZE,
					start, p, mirror_num);
		if (ret)
			break;
		start += PAGE_CACHE_SIZE;
	}

	return ret;
}