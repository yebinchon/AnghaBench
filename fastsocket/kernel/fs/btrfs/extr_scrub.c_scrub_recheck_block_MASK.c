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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct scrub_page {int io_error; int physical; int /*<<< orphan*/  page; TYPE_1__* dev; } ;
struct scrub_block {int no_io_error_seen; int page_count; struct scrub_page* pagev; scalar_t__ checksum_error; scalar_t__ header_error; } ;
struct btrfs_fs_info {int dummy; } ;
struct bio {int bi_sector; int /*<<< orphan*/  bi_flags; int /*<<< orphan*/ * bi_private; int /*<<< orphan*/  bi_end_io; int /*<<< orphan*/ * bi_bdev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int PAGE_SIZE ; 
 int READ ; 
 int REQ_SYNC ; 
 int FUNC2 (struct bio*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct bio*) ; 
 int /*<<< orphan*/  complete ; 
 int /*<<< orphan*/  scrub_complete_bio_end_io ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,struct scrub_block*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct btrfs_fs_info *fs_info,
			       struct scrub_block *sblock, int is_metadata,
			       int have_csum, u8 *csum, u64 generation,
			       u16 csum_size)
{
	int page_num;

	sblock->no_io_error_seen = 1;
	sblock->header_error = 0;
	sblock->checksum_error = 0;

	for (page_num = 0; page_num < sblock->page_count; page_num++) {
		struct bio *bio;
		int ret;
		struct scrub_page *page = sblock->pagev + page_num;
		FUNC1(complete);

		if (page->dev->bdev == NULL) {
			page->io_error = 1;
			sblock->no_io_error_seen = 0;
			continue;
		}

		FUNC0(!page->page);
		bio = FUNC3(GFP_NOFS, 1);
		if (!bio)
			return -EIO;
		bio->bi_bdev = page->dev->bdev;
		bio->bi_sector = page->physical >> 9;
		bio->bi_end_io = scrub_complete_bio_end_io;
		bio->bi_private = &complete;

		ret = FUNC2(bio, page->page, PAGE_SIZE, 0);
		if (PAGE_SIZE != ret) {
			FUNC4(bio);
			return -EIO;
		}
		FUNC5(READ | REQ_SYNC, bio);

		FUNC8(&complete);

		page->io_error = !FUNC7(BIO_UPTODATE, &bio->bi_flags);
		if (!FUNC7(BIO_UPTODATE, &bio->bi_flags))
			sblock->no_io_error_seen = 0;
		FUNC4(bio);
	}

	if (sblock->no_io_error_seen)
		FUNC6(fs_info, sblock, is_metadata,
					     have_csum, csum, generation,
					     csum_size);

	return 0;
}