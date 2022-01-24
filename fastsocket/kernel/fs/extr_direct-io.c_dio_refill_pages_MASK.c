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
struct dio_submit {int curr_user_address; int tail; scalar_t__ head; scalar_t__ curr_page; scalar_t__ blocks_available; scalar_t__ total_pages; } ;
struct dio {int rw; int page_errors; struct page** pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIO_PAGES ; 
 int PAGE_SIZE ; 
 int READ ; 
 int WRITE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int,struct page**) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static inline int FUNC4(struct dio *dio, struct dio_submit *sdio)
{
	int ret;
	int nr_pages;

	nr_pages = FUNC2(sdio->total_pages - sdio->curr_page, DIO_PAGES);
	ret = FUNC1(
		sdio->curr_user_address,		/* Where from? */
		nr_pages,			/* How many pages? */
		dio->rw == READ,		/* Write to memory? */
		&dio->pages[0]);		/* Put results here */

	if (ret < 0 && sdio->blocks_available && (dio->rw & WRITE)) {
		struct page *page = FUNC0(0);
		/*
		 * A memory fault, but the filesystem has some outstanding
		 * mapped blocks.  We need to use those blocks up to avoid
		 * leaking stale data in the file.
		 */
		if (dio->page_errors == 0)
			dio->page_errors = ret;
		FUNC3(page);
		dio->pages[0] = page;
		sdio->head = 0;
		sdio->tail = 1;
		ret = 0;
		goto out;
	}

	if (ret >= 0) {
		sdio->curr_user_address += ret * PAGE_SIZE;
		sdio->curr_page += ret;
		sdio->head = 0;
		sdio->tail = ret;
		ret = 0;
	}
out:
	return ret;	
}