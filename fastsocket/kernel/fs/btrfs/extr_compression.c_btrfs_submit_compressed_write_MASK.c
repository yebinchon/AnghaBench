#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u64 ;
struct page {int /*<<< orphan*/ * mapping; } ;
struct inode {int /*<<< orphan*/ * i_mapping; } ;
struct extent_io_tree {TYPE_2__* ops; } ;
struct compressed_bio {unsigned long start; unsigned long len; unsigned long compressed_len; unsigned long nr_pages; int /*<<< orphan*/  pending_bios; int /*<<< orphan*/ * orig_bio; struct page** compressed_pages; scalar_t__ mirror_num; struct inode* inode; scalar_t__ errors; } ;
struct btrfs_root {TYPE_3__* fs_info; } ;
struct block_device {int dummy; } ;
struct bio {void* bi_end_io; struct compressed_bio* bi_private; scalar_t__ bi_size; } ;
struct TYPE_8__ {int flags; struct btrfs_root* root; struct extent_io_tree io_tree; } ;
struct TYPE_7__ {TYPE_1__* fs_devices; } ;
struct TYPE_6__ {int (* merge_bio_hook ) (struct page*,int /*<<< orphan*/ ,unsigned long,struct bio*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {struct block_device* latest_bdev; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NODATASUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned long PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (struct bio*,struct page*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int FUNC8 (TYPE_3__*,struct bio*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct btrfs_root*,struct inode*,struct bio*,unsigned long,int) ; 
 int FUNC10 (struct btrfs_root*,int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ,int) ; 
 struct bio* FUNC11 (struct block_device*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 void* end_compressed_bio_write ; 
 int /*<<< orphan*/  FUNC14 (struct compressed_bio*) ; 
 struct compressed_bio* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned long,unsigned long,int) ; 
 int FUNC17 (struct page*,int /*<<< orphan*/ ,unsigned long,struct bio*,int /*<<< orphan*/ ) ; 

int FUNC18(struct inode *inode, u64 start,
				 unsigned long len, u64 disk_start,
				 unsigned long compressed_len,
				 struct page **compressed_pages,
				 unsigned long nr_pages)
{
	struct bio *bio = NULL;
	struct btrfs_root *root = FUNC0(inode)->root;
	struct compressed_bio *cb;
	unsigned long bytes_left;
	struct extent_io_tree *io_tree = &FUNC0(inode)->io_tree;
	int pg_index = 0;
	struct page *page;
	u64 first_byte = disk_start;
	struct block_device *bdev;
	int ret;
	int skip_sum = FUNC0(inode)->flags & BTRFS_INODE_NODATASUM;

	FUNC2(start & ((u64)PAGE_CACHE_SIZE - 1));
	cb = FUNC15(FUNC12(root, compressed_len), GFP_NOFS);
	if (!cb)
		return -ENOMEM;
	FUNC4(&cb->pending_bios, 0);
	cb->errors = 0;
	cb->inode = inode;
	cb->start = start;
	cb->len = len;
	cb->mirror_num = 0;
	cb->compressed_pages = compressed_pages;
	cb->compressed_len = compressed_len;
	cb->orig_bio = NULL;
	cb->nr_pages = nr_pages;

	bdev = FUNC0(inode)->root->fs_info->fs_devices->latest_bdev;

	bio = FUNC11(bdev, first_byte, GFP_NOFS);
	if(!bio) {
		FUNC14(cb);
		return -ENOMEM;
	}
	bio->bi_private = cb;
	bio->bi_end_io = end_compressed_bio_write;
	FUNC3(&cb->pending_bios);

	/* create and submit bios for the compressed pages */
	bytes_left = compressed_len;
	for (pg_index = 0; pg_index < cb->nr_pages; pg_index++) {
		page = compressed_pages[pg_index];
		page->mapping = inode->i_mapping;
		if (bio->bi_size)
			ret = io_tree->ops->merge_bio_hook(page, 0,
							   PAGE_CACHE_SIZE,
							   bio, 0);
		else
			ret = 0;

		page->mapping = NULL;
		if (ret || FUNC5(bio, page, PAGE_CACHE_SIZE, 0) <
		    PAGE_CACHE_SIZE) {
			FUNC6(bio);

			/*
			 * inc the count before we submit the bio so
			 * we know the end IO handler won't happen before
			 * we inc the count.  Otherwise, the cb might get
			 * freed before we're done setting it up
			 */
			FUNC3(&cb->pending_bios);
			ret = FUNC8(root->fs_info, bio, 0);
			FUNC1(ret); /* -ENOMEM */

			if (!skip_sum) {
				ret = FUNC9(root, inode, bio,
							 start, 1);
				FUNC1(ret); /* -ENOMEM */
			}

			ret = FUNC10(root, WRITE, bio, 0, 1);
			FUNC1(ret); /* -ENOMEM */

			FUNC7(bio);

			bio = FUNC11(bdev, first_byte, GFP_NOFS);
			FUNC1(!bio);
			bio->bi_private = cb;
			bio->bi_end_io = end_compressed_bio_write;
			FUNC5(bio, page, PAGE_CACHE_SIZE, 0);
		}
		if (bytes_left < PAGE_CACHE_SIZE) {
			FUNC16("bytes left %lu compress len %lu nr %lu\n",
			       bytes_left, cb->compressed_len, cb->nr_pages);
		}
		bytes_left -= PAGE_CACHE_SIZE;
		first_byte += PAGE_CACHE_SIZE;
		FUNC13();
	}
	FUNC6(bio);

	ret = FUNC8(root->fs_info, bio, 0);
	FUNC1(ret); /* -ENOMEM */

	if (!skip_sum) {
		ret = FUNC9(root, inode, bio, start, 1);
		FUNC1(ret); /* -ENOMEM */
	}

	ret = FUNC10(root, WRITE, bio, 0, 1);
	FUNC1(ret); /* -ENOMEM */

	FUNC7(bio);
	return 0;
}