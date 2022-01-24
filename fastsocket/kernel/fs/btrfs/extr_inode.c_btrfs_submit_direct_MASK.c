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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_ordered_extent {int /*<<< orphan*/  disk_len; int /*<<< orphan*/  start; int /*<<< orphan*/  flags; } ;
struct btrfs_dio_private {int disk_bytenr; int /*<<< orphan*/  pending_bios; struct bio* orig_bio; scalar_t__ errors; scalar_t__ bytes; int /*<<< orphan*/  logical_offset; struct inode* inode; struct btrfs_dio_private* private; int /*<<< orphan*/ * csums; } ;
struct bio_vec {scalar_t__ bv_len; } ;
struct bio {int bi_vcnt; int /*<<< orphan*/  bi_end_io; struct btrfs_dio_private* bi_private; scalar_t__ bi_sector; struct bio_vec* bi_io_vec; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int flags; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NODATASUM ; 
 int /*<<< orphan*/  BTRFS_ORDERED_NOCOW ; 
 int /*<<< orphan*/  BTRFS_ORDERED_PREALLOC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int REQ_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int) ; 
 int /*<<< orphan*/  btrfs_endio_direct_read ; 
 int /*<<< orphan*/  btrfs_endio_direct_write ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btrfs_ordered_extent* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_ordered_extent*) ; 
 int FUNC6 (int,struct btrfs_dio_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_dio_private*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(int rw, struct bio *bio, struct inode *inode,
				loff_t file_offset)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_dio_private *dip;
	struct bio_vec *bvec = bio->bi_io_vec;
	int skip_sum;
	int write = rw & REQ_WRITE;
	int ret = 0;

	skip_sum = FUNC0(inode)->flags & BTRFS_INODE_NODATASUM;

	dip = FUNC8(sizeof(*dip), GFP_NOFS);
	if (!dip) {
		ret = -ENOMEM;
		goto free_ordered;
	}
	dip->csums = NULL;

	/* Write's use the ordered csum stuff, so we don't need dip->csums */
	if (!write && !skip_sum) {
		dip->csums = FUNC8(sizeof(u32) * bio->bi_vcnt, GFP_NOFS);
		if (!dip->csums) {
			FUNC7(dip);
			ret = -ENOMEM;
			goto free_ordered;
		}
	}

	dip->private = bio->bi_private;
	dip->inode = inode;
	dip->logical_offset = file_offset;

	dip->bytes = 0;
	do {
		dip->bytes += bvec->bv_len;
		bvec++;
	} while (bvec <= (bio->bi_io_vec + bio->bi_vcnt - 1));

	dip->disk_bytenr = (u64)bio->bi_sector << 9;
	bio->bi_private = dip;
	dip->errors = 0;
	dip->orig_bio = bio;
	FUNC1(&dip->pending_bios, 0);

	if (write)
		bio->bi_end_io = btrfs_endio_direct_write;
	else
		bio->bi_end_io = btrfs_endio_direct_read;

	ret = FUNC6(rw, dip, skip_sum);
	if (!ret)
		return;
free_ordered:
	/*
	 * If this is a write, we need to clean up the reserved space and kill
	 * the ordered extent.
	 */
	if (write) {
		struct btrfs_ordered_extent *ordered;
		ordered = FUNC4(inode, file_offset);
		if (!FUNC9(BTRFS_ORDERED_PREALLOC, &ordered->flags) &&
		    !FUNC9(BTRFS_ORDERED_NOCOW, &ordered->flags))
			FUNC3(root, ordered->start,
						   ordered->disk_len);
		FUNC5(ordered);
		FUNC5(ordered);
	}
	FUNC2(bio, ret);
}