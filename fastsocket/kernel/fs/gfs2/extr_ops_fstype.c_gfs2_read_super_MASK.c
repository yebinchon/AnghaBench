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
struct super_block {int s_blocksize; int /*<<< orphan*/  s_bdev; } ;
struct page {int dummy; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_sb; struct super_block* sd_vfs; } ;
struct gfs2_sb {int dummy; } ;
struct bio {int bi_sector; struct page* bi_private; int /*<<< orphan*/  bi_end_io; int /*<<< orphan*/  bi_bdev; } ;
typedef  int sector_t ;

/* Variables and functions */
 int BIO_RW_META ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int EIO ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int READ_SYNC ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bio* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  end_bio_io_page ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct gfs2_sb*) ; 
 struct gfs2_sb* FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct bio*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

__attribute__((used)) static int FUNC15(struct gfs2_sbd *sdp, sector_t sector)
{
	struct super_block *sb = sdp->sd_vfs;
	struct gfs2_sb *p;
	struct page *page;
	struct bio *bio;

	page = FUNC4(GFP_NOFS);
	if (FUNC13(!page))
		return -ENOBUFS;

	FUNC1(page);
	FUNC0(page);
	FUNC11(page);

	bio = FUNC6(GFP_NOFS, 1);
	bio->bi_sector = sector * (sb->s_blocksize >> 9);
	bio->bi_bdev = sb->s_bdev;
	FUNC5(bio, page, PAGE_SIZE, 0);

	bio->bi_end_io = end_bio_io_page;
	bio->bi_private = page;
	FUNC12(READ_SYNC | (1 << BIO_RW_META), bio);
	FUNC14(page);
	FUNC7(bio);
	if (!FUNC2(page)) {
		FUNC3(page);
		return -EIO;
	}
	p = FUNC9(page);
	FUNC8(&sdp->sd_sb, p);
	FUNC10(page);
	FUNC3(page);
	return 0;
}