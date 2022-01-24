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
struct bio_vec {struct page* bv_page; } ;
struct bio {int bi_vcnt; struct bio* bi_private; struct bio_vec* bi_io_vec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 struct bio* bio_dirty_list ; 
 int /*<<< orphan*/  bio_dirty_lock ; 
 int /*<<< orphan*/  bio_dirty_work ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct bio *bio)
{
	struct bio_vec *bvec = bio->bi_io_vec;
	int nr_clean_pages = 0;
	int i;

	for (i = 0; i < bio->bi_vcnt; i++) {
		struct page *page = bvec[i].bv_page;

		if (FUNC1(page) || FUNC0(page)) {
			FUNC3(page);
			bvec[i].bv_page = NULL;
		} else {
			nr_clean_pages++;
		}
	}

	if (nr_clean_pages) {
		unsigned long flags;

		FUNC5(&bio_dirty_lock, flags);
		bio->bi_private = bio_dirty_list;
		bio_dirty_list = bio;
		FUNC6(&bio_dirty_lock, flags);
		FUNC4(&bio_dirty_work);
	} else {
		FUNC2(bio);
	}
}