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
struct page_collect {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct page_collect*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct page_collect*,int) ; 
 int FUNC3 (struct page_collect*,struct page*) ; 

__attribute__((used)) static int FUNC4(struct page *page, bool is_sync)
{
	struct page_collect pcol;
	int ret;

	FUNC1(&pcol, 1, page->mapping->host);

	/* readpage_strip might call read_exec(,async) inside at several places
	 * but this is safe for is_async=0 since read_exec will not do anything
	 * when we have a single page.
	 */
	ret = FUNC3(&pcol, page);
	if (ret) {
		FUNC0("_readpage => %d\n", ret);
		return ret;
	}

	return FUNC2(&pcol, is_sync);
}