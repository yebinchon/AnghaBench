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
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_ordered_extent {int dummy; } ;
struct TYPE_4__ {struct extent_io_tree io_tree; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int EXTENT_DELALLOC ; 
 int EXTENT_DIRTY ; 
 int EXTENT_DO_ACCOUNTING ; 
 int EXTENT_LOCKED ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct inode*,struct btrfs_ordered_extent**,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_ordered_extent*) ; 
 struct btrfs_ordered_extent* FUNC8 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_ordered_extent*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_io_tree*,scalar_t__,scalar_t__,int,int,int,struct extent_state**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_io_tree*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

__attribute__((used)) static void FUNC17(struct page *page, unsigned long offset)
{
	struct inode *inode = page->mapping->host;
	struct extent_io_tree *tree;
	struct btrfs_ordered_extent *ordered;
	struct extent_state *cached_state = NULL;
	u64 page_start = FUNC14(page);
	u64 page_end = page_start + PAGE_CACHE_SIZE - 1;

	/*
	 * we have the page locked, so new writeback can't start,
	 * and the dirty bit won't be cleared while we are here.
	 *
	 * Wait for IO on this page so that we can safely clear
	 * the PagePrivate2 bit and do ordered accounting
	 */
	FUNC16(page);

	tree = &FUNC0(inode)->io_tree;
	if (offset) {
		FUNC10(page, GFP_NOFS);
		return;
	}
	FUNC12(tree, page_start, page_end, 0, &cached_state);
	ordered = FUNC8(inode,
					   FUNC14(page));
	if (ordered) {
		/*
		 * IO on this page will never be started, so we need
		 * to account for any ordered extents now
		 */
		FUNC11(tree, page_start, page_end,
				 EXTENT_DIRTY | EXTENT_DELALLOC |
				 EXTENT_LOCKED | EXTENT_DO_ACCOUNTING, 1, 0,
				 &cached_state, GFP_NOFS);
		/*
		 * whoever cleared the private bit is responsible
		 * for the finish_ordered_io
		 */
		if (FUNC4(page) &&
		    FUNC6(inode, &ordered, page_start,
						   PAGE_CACHE_SIZE, 1)) {
			FUNC7(ordered);
		}
		FUNC9(ordered);
		cached_state = NULL;
		FUNC12(tree, page_start, page_end, 0, &cached_state);
	}
	FUNC11(tree, page_start, page_end,
		 EXTENT_LOCKED | EXTENT_DIRTY | EXTENT_DELALLOC |
		 EXTENT_DO_ACCOUNTING, 1, 1, &cached_state, GFP_NOFS);
	FUNC5(page, GFP_NOFS);

	FUNC1(page);
	if (FUNC3(page)) {
		FUNC2(page);
		FUNC15(page, 0);
		FUNC13(page);
	}
}