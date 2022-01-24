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
struct lbuf {int l_blkno; int /*<<< orphan*/  l_flag; int /*<<< orphan*/  l_ioevent; int /*<<< orphan*/  l_offset; int /*<<< orphan*/  l_page; } ;
struct jfs_log {int l2bsize; int /*<<< orphan*/  bdev; } ;
struct bio {int bi_sector; int bi_vcnt; struct lbuf* bi_private; int /*<<< orphan*/  bi_end_io; void* bi_size; scalar_t__ bi_idx; TYPE_1__* bi_io_vec; int /*<<< orphan*/  bi_bdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bv_offset; void* bv_len; int /*<<< orphan*/  bv_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 void* LOGPSIZE ; 
 int /*<<< orphan*/  READ_SYNC ; 
 struct bio* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct lbuf*,int) ; 
 struct lbuf* FUNC2 (struct jfs_log*,int) ; 
 int /*<<< orphan*/  lbmIODone ; 
 int /*<<< orphan*/  lbmREAD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct jfs_log * log, int pn, struct lbuf ** bpp)
{
	struct bio *bio;
	struct lbuf *bp;

	/*
	 * allocate a log buffer
	 */
	*bpp = bp = FUNC2(log, pn);
	FUNC1("lbmRead: bp:0x%p pn:0x%x", bp, pn);

	bp->l_flag |= lbmREAD;

	bio = FUNC0(GFP_NOFS, 1);

	bio->bi_sector = bp->l_blkno << (log->l2bsize - 9);
	bio->bi_bdev = log->bdev;
	bio->bi_io_vec[0].bv_page = bp->l_page;
	bio->bi_io_vec[0].bv_len = LOGPSIZE;
	bio->bi_io_vec[0].bv_offset = bp->l_offset;

	bio->bi_vcnt = 1;
	bio->bi_idx = 0;
	bio->bi_size = LOGPSIZE;

	bio->bi_end_io = lbmIODone;
	bio->bi_private = bp;
	FUNC3(READ_SYNC, bio);

	FUNC4(bp->l_ioevent, (bp->l_flag != lbmREAD));

	return 0;
}