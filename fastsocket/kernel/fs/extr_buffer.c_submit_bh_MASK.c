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
struct buffer_head {int b_blocknr; int b_size; int /*<<< orphan*/  b_page; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_end_io; } ;
struct bio {int bi_sector; int bi_vcnt; int bi_size; struct buffer_head* bi_private; int /*<<< orphan*/  bi_end_io; scalar_t__ bi_idx; TYPE_1__* bi_io_vec; int /*<<< orphan*/  bi_bdev; } ;
struct TYPE_2__ {int bv_len; int /*<<< orphan*/  bv_offset; int /*<<< orphan*/  bv_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int WRITE ; 
 int WRITE_BARRIER ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 scalar_t__ FUNC9 (struct buffer_head*) ; 
 int FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_bio_bh_io_sync ; 
 int /*<<< orphan*/  FUNC12 (int,struct bio*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (int,struct bio*) ; 
 scalar_t__ FUNC14 (struct buffer_head*) ; 

int FUNC15(int rw, struct buffer_head * bh)
{
	struct bio *bio;
	int ret = 0;

	FUNC0(!FUNC7(bh));
	FUNC0(!FUNC8(bh));
	FUNC0(!bh->b_end_io);
	FUNC0(FUNC6(bh));
	FUNC0(FUNC10(bh));

	/*
	 * Mask in barrier bit for a write (could be either a WRITE or a
	 * WRITE_SYNC
	 */
	if (FUNC9(bh) && (rw & WRITE))
		rw |= WRITE_BARRIER;

	/*
	 * Only clear out a write error when rewriting
	 */
	if (FUNC14(bh) && (rw & WRITE))
		FUNC11(bh);

	/*
	 * from here on down, it's all bio -- do the initial mapping,
	 * submit_bio -> generic_make_request may further map this bio around
	 */
	bio = FUNC2(GFP_NOIO, 1);

	bio->bi_sector = bh->b_blocknr * (bh->b_size >> 9);
	bio->bi_bdev = bh->b_bdev;
	bio->bi_io_vec[0].bv_page = bh->b_page;
	bio->bi_io_vec[0].bv_len = bh->b_size;
	bio->bi_io_vec[0].bv_offset = FUNC1(bh);

	bio->bi_vcnt = 1;
	bio->bi_idx = 0;
	bio->bi_size = bh->b_size;

	bio->bi_end_io = end_bio_bh_io_sync;
	bio->bi_private = bh;

	/* Take care of bh's that straddle the end of the device */
	FUNC12(rw, bio, bh);

	FUNC4(bio);
	FUNC13(rw, bio);

	if (FUNC3(bio, BIO_EOPNOTSUPP))
		ret = -EOPNOTSUPP;

	FUNC5(bio);
	return ret;
}