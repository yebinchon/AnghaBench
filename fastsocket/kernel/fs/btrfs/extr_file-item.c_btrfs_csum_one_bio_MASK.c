#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct btrfs_sector_sum {int bytenr; int /*<<< orphan*/  sum; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_ordered_sum {unsigned long len; int /*<<< orphan*/  bytenr; struct btrfs_sector_sum* sums; int /*<<< orphan*/  list; } ;
struct btrfs_ordered_extent {int file_offset; int len; int /*<<< orphan*/  start; } ;
struct bio_vec {int bv_offset; int bv_len; int /*<<< orphan*/  bv_page; } ;
struct bio {int bi_vcnt; unsigned long bi_size; scalar_t__ bi_sector; struct bio_vec* bi_io_vec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct btrfs_ordered_extent*,struct btrfs_ordered_sum*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct btrfs_ordered_extent* FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_ordered_extent*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 struct btrfs_ordered_sum* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct btrfs_root *root, struct inode *inode,
		       struct bio *bio, u64 file_start, int contig)
{
	struct btrfs_ordered_sum *sums;
	struct btrfs_sector_sum *sector_sum;
	struct btrfs_ordered_extent *ordered;
	char *data;
	struct bio_vec *bvec = bio->bi_io_vec;
	int bio_index = 0;
	unsigned long total_bytes = 0;
	unsigned long this_sum_bytes = 0;
	u64 offset;
	u64 disk_bytenr;

	FUNC2(bio->bi_vcnt <= 0);
	sums = FUNC11(FUNC7(root, bio->bi_size), GFP_NOFS);
	if (!sums)
		return -ENOMEM;

	sector_sum = sums->sums;
	disk_bytenr = (u64)bio->bi_sector << 9;
	sums->len = bio->bi_size;
	FUNC1(&sums->list);

	if (contig)
		offset = file_start;
	else
		offset = FUNC12(bvec->bv_page) + bvec->bv_offset;

	ordered = FUNC6(inode, offset);
	FUNC0(!ordered); /* Logic error */
	sums->bytenr = ordered->start;

	while (bio_index < bio->bi_vcnt) {
		if (!contig)
			offset = FUNC12(bvec->bv_page) + bvec->bv_offset;

		if (!contig && (offset >= ordered->file_offset + ordered->len ||
		    offset < ordered->file_offset)) {
			unsigned long bytes_left;
			sums->len = this_sum_bytes;
			this_sum_bytes = 0;
			FUNC3(inode, ordered, sums);
			FUNC8(ordered);

			bytes_left = bio->bi_size - total_bytes;

			sums = FUNC11(FUNC7(root, bytes_left),
				       GFP_NOFS);
			FUNC0(!sums); /* -ENOMEM */
			sector_sum = sums->sums;
			sums->len = bytes_left;
			ordered = FUNC6(inode, offset);
			FUNC0(!ordered); /* Logic error */
			sums->bytenr = ordered->start;
		}

		data = FUNC9(bvec->bv_page, KM_USER0);
		sector_sum->sum = ~(u32)0;
		sector_sum->sum = FUNC4(root,
						  data + bvec->bv_offset,
						  sector_sum->sum,
						  bvec->bv_len);
		FUNC10(data, KM_USER0);
		FUNC5(sector_sum->sum,
				 (char *)&sector_sum->sum);
		sector_sum->bytenr = disk_bytenr;

		sector_sum++;
		bio_index++;
		total_bytes += bvec->bv_len;
		this_sum_bytes += bvec->bv_len;
		disk_bytenr += bvec->bv_len;
		offset += bvec->bv_len;
		bvec++;
	}
	this_sum_bytes = 0;
	FUNC3(inode, ordered, sums);
	FUNC8(ordered);
	return 0;
}