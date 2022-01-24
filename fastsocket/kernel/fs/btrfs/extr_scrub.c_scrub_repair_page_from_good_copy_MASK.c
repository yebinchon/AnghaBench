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
struct scrub_page {int physical; TYPE_1__* dev; int /*<<< orphan*/ * page; scalar_t__ io_error; } ;
struct scrub_block {scalar_t__ checksum_error; scalar_t__ header_error; struct scrub_page* pagev; } ;
struct bio {int bi_sector; int /*<<< orphan*/ * bi_private; int /*<<< orphan*/  bi_end_io; int /*<<< orphan*/  bi_bdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  BTRFS_DEV_STAT_WRITE_ERRS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int PAGE_SIZE ; 
 int REQ_SYNC ; 
 int WRITE ; 
 int FUNC2 (struct bio*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct bio*) ; 
 int /*<<< orphan*/  complete ; 
 int /*<<< orphan*/  scrub_complete_bio_end_io ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct scrub_block *sblock_bad,
					    struct scrub_block *sblock_good,
					    int page_num, int force_write)
{
	struct scrub_page *page_bad = sblock_bad->pagev + page_num;
	struct scrub_page *page_good = sblock_good->pagev + page_num;

	FUNC0(sblock_bad->pagev[page_num].page == NULL);
	FUNC0(sblock_good->pagev[page_num].page == NULL);
	if (force_write || sblock_bad->header_error ||
	    sblock_bad->checksum_error || page_bad->io_error) {
		struct bio *bio;
		int ret;
		FUNC1(complete);

		bio = FUNC3(GFP_NOFS, 1);
		if (!bio)
			return -EIO;
		bio->bi_bdev = page_bad->dev->bdev;
		bio->bi_sector = page_bad->physical >> 9;
		bio->bi_end_io = scrub_complete_bio_end_io;
		bio->bi_private = &complete;

		ret = FUNC2(bio, page_good->page, PAGE_SIZE, 0);
		if (PAGE_SIZE != ret) {
			FUNC5(bio);
			return -EIO;
		}
		FUNC7(WRITE | REQ_SYNC, bio);

		FUNC8(&complete);
		if (!FUNC4(bio, BIO_UPTODATE)) {
			FUNC6(page_bad->dev,
				BTRFS_DEV_STAT_WRITE_ERRS);
			FUNC5(bio);
			return -EIO;
		}
		FUNC5(bio);
	}

	return 0;
}