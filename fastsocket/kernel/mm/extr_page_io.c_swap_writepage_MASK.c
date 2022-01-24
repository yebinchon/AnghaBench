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
struct writeback_control {scalar_t__ sync_mode; } ;
struct page {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int BIO_RW_SYNCIO ; 
 int BIO_RW_UNPLUG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  PSWPOUT ; 
 scalar_t__ WB_SYNC_ALL ; 
 int WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  end_swap_bio_write ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct bio*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

int FUNC7(struct page *page, struct writeback_control *wbc)
{
	struct bio *bio;
	int ret = 0, rw = WRITE;

	if (FUNC5(page)) {
		FUNC6(page);
		goto out;
	}
	bio = FUNC1(GFP_NOIO, page, end_swap_bio_write);
	if (bio == NULL) {
		FUNC2(page);
		FUNC6(page);
		ret = -ENOMEM;
		goto out;
	}
	if (wbc->sync_mode == WB_SYNC_ALL)
		rw |= (1 << BIO_RW_SYNCIO) | (1 << BIO_RW_UNPLUG);
	FUNC0(PSWPOUT);
	FUNC3(page);
	FUNC6(page);
	FUNC4(rw, bio);
out:
	return ret;
}