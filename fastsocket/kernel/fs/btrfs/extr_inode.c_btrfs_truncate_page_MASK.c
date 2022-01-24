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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct page {struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_root {int sectorsize; } ;
struct btrfs_ordered_extent {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct extent_io_tree io_tree; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int EIO ; 
 int ENOMEM ; 
 int EXTENT_DELALLOC ; 
 int EXTENT_DIRTY ; 
 int EXTENT_DO_ACCOUNTING ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 
 int FUNC5 (struct inode*,int) ; 
 struct btrfs_ordered_extent* FUNC6 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_ordered_extent*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct page*) ; 
 int FUNC9 (struct inode*,scalar_t__,scalar_t__,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct btrfs_ordered_extent*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_io_tree*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct extent_state**,int /*<<< orphan*/ ) ; 
 struct page* FUNC12 (struct address_space*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 char* FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_io_tree*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 scalar_t__ FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 

__attribute__((used)) static int FUNC26(struct address_space *mapping, loff_t from)
{
	struct inode *inode = mapping->host;
	struct btrfs_root *root = FUNC0(inode)->root;
	struct extent_io_tree *io_tree = &FUNC0(inode)->io_tree;
	struct btrfs_ordered_extent *ordered;
	struct extent_state *cached_state = NULL;
	char *kaddr;
	u32 blocksize = root->sectorsize;
	pgoff_t index = from >> PAGE_CACHE_SHIFT;
	unsigned offset = from & (PAGE_CACHE_SIZE-1);
	struct page *page;
	gfp_t mask = FUNC3(mapping);
	int ret = 0;
	u64 page_start;
	u64 page_end;

	if ((offset & (blocksize - 1)) == 0)
		goto out;
	ret = FUNC5(inode, PAGE_CACHE_SIZE);
	if (ret)
		goto out;

	ret = -ENOMEM;
again:
	page = FUNC12(mapping, index, mask);
	if (!page) {
		FUNC4(inode, PAGE_CACHE_SIZE);
		goto out;
	}

	page_start = FUNC20(page);
	page_end = page_start + PAGE_CACHE_SIZE - 1;

	if (!FUNC2(page)) {
		ret = FUNC8(NULL, page);
		FUNC17(page);
		if (page->mapping != mapping) {
			FUNC24(page);
			FUNC19(page);
			goto again;
		}
		if (!FUNC2(page)) {
			ret = -EIO;
			goto out_unlock;
		}
	}
	FUNC25(page);

	FUNC16(io_tree, page_start, page_end, 0, &cached_state);
	FUNC22(page);

	ordered = FUNC6(inode, page_start);
	if (ordered) {
		FUNC23(io_tree, page_start, page_end,
				     &cached_state, GFP_NOFS);
		FUNC24(page);
		FUNC19(page);
		FUNC10(inode, ordered, 1);
		FUNC7(ordered);
		goto again;
	}

	FUNC11(&FUNC0(inode)->io_tree, page_start, page_end,
			  EXTENT_DIRTY | EXTENT_DELALLOC | EXTENT_DO_ACCOUNTING,
			  0, 0, &cached_state, GFP_NOFS);

	ret = FUNC9(inode, page_start, page_end,
					&cached_state);
	if (ret) {
		FUNC23(io_tree, page_start, page_end,
				     &cached_state, GFP_NOFS);
		goto out_unlock;
	}

	ret = 0;
	if (offset != PAGE_CACHE_SIZE) {
		kaddr = FUNC14(page);
		FUNC18(kaddr + offset, 0, PAGE_CACHE_SIZE - offset);
		FUNC13(page);
		FUNC15(page);
	}
	FUNC1(page);
	FUNC21(page);
	FUNC23(io_tree, page_start, page_end, &cached_state,
			     GFP_NOFS);

out_unlock:
	if (ret)
		FUNC4(inode, PAGE_CACHE_SIZE);
	FUNC24(page);
	FUNC19(page);
out:
	return ret;
}