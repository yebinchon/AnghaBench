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
struct writeback_control {long range_start; long range_end; } ;
struct page_collect {int dummy; } ;
struct address_space {long nrpages; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,long,long,long,long,long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 long LLONG_MAX ; 
 long PAGE_CACHE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct page_collect*,long,TYPE_1__*) ; 
 long FUNC3 (long,long) ; 
 int FUNC4 (struct address_space*,struct writeback_control*,int /*<<< orphan*/ ,struct page_collect*) ; 
 int FUNC5 (struct page_collect*) ; 
 int /*<<< orphan*/  writepage_strip ; 

__attribute__((used)) static int FUNC6(struct address_space *mapping,
		       struct writeback_control *wbc)
{
	struct page_collect pcol;
	long start, end, expected_pages;
	int ret;

	start = wbc->range_start >> PAGE_CACHE_SHIFT;
	end = (wbc->range_end == LLONG_MAX) ?
			start + mapping->nrpages :
			wbc->range_end >> PAGE_CACHE_SHIFT;

	if (start || end)
		expected_pages = FUNC3(end - start + 1, 32L);
	else
		expected_pages = mapping->nrpages;

	FUNC0("inode(0x%lx) wbc->start=0x%llx wbc->end=0x%llx"
		     " m->nrpages=%lu start=0x%lx end=0x%lx\n",
		     mapping->host->i_ino, wbc->range_start, wbc->range_end,
		     mapping->nrpages, start, end);

	FUNC2(&pcol, expected_pages, mapping->host);

	ret = FUNC4(mapping, wbc, writepage_strip, &pcol);
	if (ret) {
		FUNC1("write_cache_pages => %d\n", ret);
		return ret;
	}

	return FUNC5(&pcol);
}