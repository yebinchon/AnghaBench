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
struct writeback_control {int dummy; } ;
struct page_collect {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct page_collect*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct page_collect*) ; 
 int FUNC3 (struct page*,int /*<<< orphan*/ *,struct page_collect*) ; 

__attribute__((used)) static int FUNC4(struct page *page, struct writeback_control *wbc)
{
	struct page_collect pcol;
	int ret;

	FUNC1(&pcol, 1, page->mapping->host);

	ret = FUNC3(page, NULL, &pcol);
	if (ret) {
		FUNC0("exofs_writepage => %d\n", ret);
		return ret;
	}

	return FUNC2(&pcol);
}