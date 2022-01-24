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
typedef  unsigned long u64 ;
struct vm_fault {struct page* page; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_file; } ;
struct page {scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; int /*<<< orphan*/  i_sb; } ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  log_transid; TYPE_1__* fs_info; } ;
struct btrfs_ordered_extent {int dummy; } ;
typedef  unsigned long loff_t ;
struct TYPE_6__ {struct btrfs_root* root; int /*<<< orphan*/  last_sub_trans; int /*<<< orphan*/  last_trans; struct extent_io_tree io_tree; } ;
struct TYPE_5__ {struct inode* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  generation; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int ENOMEM ; 
 int EXTENT_DELALLOC ; 
 int EXTENT_DIRTY ; 
 int EXTENT_DO_ACCOUNTING ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned long PAGE_CACHE_MASK ; 
 unsigned long PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int VM_FAULT_LOCKED ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,unsigned long) ; 
 int FUNC4 (struct inode*,unsigned long) ; 
 struct btrfs_ordered_extent* FUNC5 (struct inode*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_ordered_extent*) ; 
 int FUNC7 (struct inode*,unsigned long,unsigned long,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct btrfs_ordered_extent*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_io_tree*,unsigned long,unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct extent_state**,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 unsigned long FUNC13 (struct inode*) ; 
 char* FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_io_tree*,unsigned long,unsigned long,int /*<<< orphan*/ ,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct extent_io_tree*,unsigned long,unsigned long,struct extent_state**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 

int FUNC27(struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	struct inode *inode = FUNC11(vma->vm_file)->d_inode;
	struct btrfs_root *root = FUNC0(inode)->root;
	struct extent_io_tree *io_tree = &FUNC0(inode)->io_tree;
	struct btrfs_ordered_extent *ordered;
	struct extent_state *cached_state = NULL;
	char *kaddr;
	unsigned long zero_start;
	loff_t size;
	int ret;
	int reserved = 0;
	u64 page_start;
	u64 page_end;

	FUNC21(inode->i_sb);
	ret  = FUNC4(inode, PAGE_CACHE_SIZE);
	if (!ret) {
		ret = FUNC9(vma->vm_file);
		reserved = 1;
	}
	if (ret) {
		if (ret == -ENOMEM)
			ret = VM_FAULT_OOM;
		else /* -ENOSPC, -EIO, etc */
			ret = VM_FAULT_SIGBUS;
		if (reserved)
			goto out;
		goto out_noreserve;
	}

	ret = VM_FAULT_NOPAGE; /* make the VM retry the fault */
again:
	FUNC17(page);
	size = FUNC13(inode);
	page_start = FUNC19(page);
	page_end = page_start + PAGE_CACHE_SIZE - 1;

	if ((page->mapping != inode->i_mapping) ||
	    (page_start >= size)) {
		/* page got truncated out from underneath us */
		goto out_unlock;
	}
	FUNC26(page);

	FUNC16(io_tree, page_start, page_end, 0, &cached_state);
	FUNC23(page);

	/*
	 * we can't set the delalloc bits if there are pending ordered
	 * extents.  Drop our locks and wait for them to finish
	 */
	ordered = FUNC5(inode, page_start);
	if (ordered) {
		FUNC24(io_tree, page_start, page_end,
				     &cached_state, GFP_NOFS);
		FUNC25(page);
		FUNC8(inode, ordered, 1);
		FUNC6(ordered);
		goto again;
	}

	/*
	 * XXX - page_mkwrite gets called every time the page is dirtied, even
	 * if it was already dirty, so for space accounting reasons we need to
	 * clear any delalloc bits for the range we are fixing to save.  There
	 * is probably a better way to do this, but for now keep consistent with
	 * prepare_pages in the normal write path.
	 */
	FUNC10(&FUNC0(inode)->io_tree, page_start, page_end,
			  EXTENT_DIRTY | EXTENT_DELALLOC | EXTENT_DO_ACCOUNTING,
			  0, 0, &cached_state, GFP_NOFS);

	ret = FUNC7(inode, page_start, page_end,
					&cached_state);
	if (ret) {
		FUNC24(io_tree, page_start, page_end,
				     &cached_state, GFP_NOFS);
		ret = VM_FAULT_SIGBUS;
		goto out_unlock;
	}
	ret = 0;

	/* page is wholly or partially inside EOF */
	if (page_start + PAGE_CACHE_SIZE > size)
		zero_start = size & ~PAGE_CACHE_MASK;
	else
		zero_start = PAGE_CACHE_SIZE;

	if (zero_start != PAGE_CACHE_SIZE) {
		kaddr = FUNC14(page);
		FUNC18(kaddr + zero_start, 0, PAGE_CACHE_SIZE - zero_start);
		FUNC12(page);
		FUNC15(page);
	}
	FUNC1(page);
	FUNC22(page);
	FUNC2(page);

	FUNC0(inode)->last_trans = root->fs_info->generation;
	FUNC0(inode)->last_sub_trans = FUNC0(inode)->root->log_transid;

	FUNC24(io_tree, page_start, page_end, &cached_state, GFP_NOFS);

out_unlock:
	if (!ret) {
		FUNC20(inode->i_sb);
		return VM_FAULT_LOCKED;
	}
	FUNC25(page);
out:
	FUNC3(inode, PAGE_CACHE_SIZE);
out_noreserve:
	FUNC20(inode->i_sb);
	return ret;
}