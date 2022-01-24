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
typedef  scalar_t__ u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_5__ {scalar_t__ flags; int /*<<< orphan*/  ordered_free; int /*<<< orphan*/  ordered_func; int /*<<< orphan*/  func; } ;
struct async_cow {TYPE_2__ work; int /*<<< orphan*/  extents; scalar_t__ end; scalar_t__ start; struct page* locked_page; struct btrfs_root* root; int /*<<< orphan*/  inode; } ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  io_tree; struct btrfs_root* root; } ;
struct TYPE_4__ {int /*<<< orphan*/  async_delalloc_pages; int /*<<< orphan*/  async_submit_wait; int /*<<< orphan*/  async_submit_draining; int /*<<< orphan*/  delalloc_workers; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NOCOMPRESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EXTENT_LOCKED ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ PAGE_CACHE_SHIFT ; 
 scalar_t__ PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  async_cow_free ; 
 int /*<<< orphan*/  async_cow_start ; 
 int /*<<< orphan*/  async_cow_submit ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct async_cow* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct page *locked_page,
				u64 start, u64 end, int *page_started,
				unsigned long *nr_written)
{
	struct async_cow *async_cow;
	struct btrfs_root *root = FUNC0(inode)->root;
	unsigned long nr_pages;
	u64 cur_end;
	int limit = 10 * 1024 * 1042;

	FUNC6(&FUNC0(inode)->io_tree, start, end, EXTENT_LOCKED,
			 1, 0, NULL, GFP_NOFS);
	while (start < end) {
		async_cow = FUNC8(sizeof(*async_cow), GFP_NOFS);
		FUNC1(!async_cow); /* -ENOMEM */
		async_cow->inode = FUNC7(inode);
		async_cow->root = root;
		async_cow->locked_page = locked_page;
		async_cow->start = start;

		if (FUNC0(inode)->flags & BTRFS_INODE_NOCOMPRESS)
			cur_end = end;
		else
			cur_end = FUNC9(end, start + 512 * 1024 - 1);

		async_cow->end = cur_end;
		FUNC2(&async_cow->extents);

		async_cow->work.func = async_cow_start;
		async_cow->work.ordered_func = async_cow_submit;
		async_cow->work.ordered_free = async_cow_free;
		async_cow->work.flags = 0;

		nr_pages = (cur_end - start + PAGE_CACHE_SIZE) >>
			PAGE_CACHE_SHIFT;
		FUNC3(nr_pages, &root->fs_info->async_delalloc_pages);

		FUNC5(&root->fs_info->delalloc_workers,
				   &async_cow->work);

		if (FUNC4(&root->fs_info->async_delalloc_pages) > limit) {
			FUNC10(root->fs_info->async_submit_wait,
			   (FUNC4(&root->fs_info->async_delalloc_pages) <
			    limit));
		}

		while (FUNC4(&root->fs_info->async_submit_draining) &&
		      FUNC4(&root->fs_info->async_delalloc_pages)) {
			FUNC10(root->fs_info->async_submit_wait,
			  (FUNC4(&root->fs_info->async_delalloc_pages) ==
			   0));
		}

		*nr_written += nr_pages;
		start = cur_end + 1;
	}
	*page_started = 1;
	return 0;
}