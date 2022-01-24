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
struct page {int dummy; } ;
struct dio {int io_error; scalar_t__ rw; scalar_t__ is_async; } ;
struct bio_vec {struct page* bv_page; } ;
struct bio {int bi_vcnt; struct bio_vec* bi_io_vec; int /*<<< orphan*/  bi_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dio *dio, struct bio *bio)
{
	const int uptodate = FUNC5(BIO_UPTODATE, &bio->bi_flags);
	struct bio_vec *bvec = bio->bi_io_vec;
	int page_no;

	if (!uptodate)
		dio->io_error = -EIO;

	if (dio->is_async && dio->rw == READ) {
		FUNC1(bio);	/* transfers ownership */
	} else {
		for (page_no = 0; page_no < bio->bi_vcnt; page_no++) {
			struct page *page = bvec[page_no].bv_page;

			if (dio->rw == READ && !FUNC0(page))
				FUNC4(page);
			FUNC3(page);
		}
		FUNC2(bio);
	}
	return uptodate ? 0 : -EIO;
}