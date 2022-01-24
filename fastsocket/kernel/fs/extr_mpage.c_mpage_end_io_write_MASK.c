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
struct page {TYPE_1__* mapping; int /*<<< orphan*/  flags; } ;
struct bio_vec {struct page* bv_page; } ;
struct bio {int bi_vcnt; struct bio_vec* bi_io_vec; int /*<<< orphan*/  bi_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_EIO ; 
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct bio *bio, int err)
{
	const int uptodate = FUNC4(BIO_UPTODATE, &bio->bi_flags);
	struct bio_vec *bvec = bio->bi_io_vec + bio->bi_vcnt - 1;

	do {
		struct page *page = bvec->bv_page;

		if (--bvec >= bio->bi_io_vec)
			FUNC2(&bvec->bv_page->flags);

		if (!uptodate){
			if (page->mapping)
				FUNC3(AS_EIO, &page->mapping->flags);
		}
		FUNC1(page);
	} while (bvec >= bio->bi_io_vec);
	FUNC0(bio);
}