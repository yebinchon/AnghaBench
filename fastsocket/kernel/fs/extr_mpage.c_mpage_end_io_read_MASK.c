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
struct page {int /*<<< orphan*/  flags; } ;
struct bio_vec {struct page* bv_page; } ;
struct bio {int bi_vcnt; struct bio_vec* bi_io_vec; int /*<<< orphan*/  bi_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static void FUNC7(struct bio *bio, int err)
{
	const int uptodate = FUNC5(BIO_UPTODATE, &bio->bi_flags);
	struct bio_vec *bvec = bio->bi_io_vec + bio->bi_vcnt - 1;

	do {
		struct page *page = bvec->bv_page;

		if (--bvec >= bio->bi_io_vec)
			FUNC4(&bvec->bv_page->flags);

		if (uptodate) {
			FUNC2(page);
		} else {
			FUNC0(page);
			FUNC1(page);
		}
		FUNC6(page);
	} while (bvec >= bio->bi_io_vec);
	FUNC3(bio);
}