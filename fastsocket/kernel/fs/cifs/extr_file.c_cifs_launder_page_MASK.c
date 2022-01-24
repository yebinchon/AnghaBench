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
struct writeback_control {scalar_t__ range_end; scalar_t__ range_start; int /*<<< orphan*/  nr_to_write; int /*<<< orphan*/  sync_mode; } ;
struct page {TYPE_1__* mapping; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct page*,struct writeback_control*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 

__attribute__((used)) static int FUNC5(struct page *page)
{
	int rc = 0;
	loff_t range_start = FUNC4(page);
	loff_t range_end = range_start + (loff_t)(PAGE_CACHE_SIZE - 1);
	struct writeback_control wbc = {
		.sync_mode = WB_SYNC_ALL,
		.nr_to_write = 0,
		.range_start = range_start,
		.range_end = range_end,
	};

	FUNC0(1, "Launder page: %p", page);

	if (FUNC3(page))
		rc = FUNC2(page, &wbc);

	FUNC1(page, page->mapping->host);
	return rc;
}