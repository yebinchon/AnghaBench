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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_mapping_tree {int dummy; } ;
struct btrfs_dio_private {int logical_offset; int errors; struct bio* orig_bio; int /*<<< orphan*/  pending_bios; int /*<<< orphan*/ * csums; struct inode* inode; } ;
struct bio_vec {int bv_len; int /*<<< orphan*/  bv_offset; int /*<<< orphan*/  bv_page; } ;
struct bio {int bi_sector; int bi_size; int bi_vcnt; void* bi_end_io; struct btrfs_dio_private* bi_private; int /*<<< orphan*/  bi_bdev; struct bio_vec* bi_io_vec; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;
struct TYPE_3__ {struct btrfs_mapping_tree mapping_tree; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  READ ; 
 int REQ_WRITE ; 
 int FUNC1 (struct bio*,struct inode*,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct bio*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 struct bio* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* btrfs_end_dio_bio ; 
 int FUNC9 (struct btrfs_mapping_tree*,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(int rw, struct btrfs_dio_private *dip,
				    int skip_sum)
{
	struct inode *inode = dip->inode;
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_mapping_tree *map_tree = &root->fs_info->mapping_tree;
	struct bio *bio;
	struct bio *orig_bio = dip->orig_bio;
	struct bio_vec *bvec = orig_bio->bi_io_vec;
	u64 start_sector = orig_bio->bi_sector;
	u64 file_offset = dip->logical_offset;
	u64 submit_len = 0;
	u64 map_length;
	int nr_pages = 0;
	u32 *csums = dip->csums;
	int ret = 0;
	int async_submit = 0;
	int write = rw & REQ_WRITE;

	map_length = orig_bio->bi_size;
	ret = FUNC9(map_tree, READ, start_sector << 9,
			      &map_length, NULL, 0);
	if (ret) {
		FUNC7(orig_bio);
		return -EIO;
	}

	if (map_length >= orig_bio->bi_size) {
		bio = orig_bio;
		goto submit;
	}

	async_submit = 1;
	bio = FUNC8(orig_bio->bi_bdev, start_sector, GFP_NOFS);
	if (!bio)
		return -ENOMEM;
	bio->bi_private = dip;
	bio->bi_end_io = btrfs_end_dio_bio;
	FUNC4(&dip->pending_bios);

	while (bvec <= (orig_bio->bi_io_vec + orig_bio->bi_vcnt - 1)) {
		if (FUNC11(map_length < submit_len + bvec->bv_len ||
		    FUNC5(bio, bvec->bv_page, bvec->bv_len,
				 bvec->bv_offset) < bvec->bv_len)) {
			/*
			 * inc the count before we submit the bio so
			 * we know the end IO handler won't happen before
			 * we inc the count. Otherwise, the dip might get freed
			 * before we're done setting it up
			 */
			FUNC4(&dip->pending_bios);
			ret = FUNC1(bio, inode, rw,
						     file_offset, skip_sum,
						     csums, async_submit);
			if (ret) {
				FUNC7(bio);
				FUNC2(&dip->pending_bios);
				goto out_err;
			}

			/* Write's use the ordered csums */
			if (!write && !skip_sum)
				csums = csums + nr_pages;
			start_sector += submit_len >> 9;
			file_offset += submit_len;

			submit_len = 0;
			nr_pages = 0;

			bio = FUNC8(orig_bio->bi_bdev,
						  start_sector, GFP_NOFS);
			if (!bio)
				goto out_err;
			bio->bi_private = dip;
			bio->bi_end_io = btrfs_end_dio_bio;

			map_length = orig_bio->bi_size;
			ret = FUNC9(map_tree, READ, start_sector << 9,
					      &map_length, NULL, 0);
			if (ret) {
				FUNC7(bio);
				goto out_err;
			}
		} else {
			submit_len += bvec->bv_len;
			nr_pages ++;
			bvec++;
		}
	}

submit:
	ret = FUNC1(bio, inode, rw, file_offset, skip_sum,
				     csums, async_submit);
	if (!ret)
		return 0;

	FUNC7(bio);
out_err:
	dip->errors = 1;
	/*
	 * before atomic variable goto zero, we must
	 * make sure dip->errors is perceived to be set.
	 */
	FUNC10();
	if (FUNC3(&dip->pending_bios))
		FUNC6(dip->orig_bio);

	/* bio_end_io() will handle error, so we needn't return it */
	return 0;
}