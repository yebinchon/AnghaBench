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
struct writeback_control {int nr_to_write; int encountered_congestion; scalar_t__ nonblocking; } ;
struct page {int /*<<< orphan*/  index; TYPE_1__* mapping; } ;
struct backing_dev_info {int dummy; } ;
struct afs_writeback {int dummy; } ;
struct TYPE_2__ {struct backing_dev_info* backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct afs_writeback*,struct page*) ; 
 scalar_t__ FUNC4 (struct backing_dev_info*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

int FUNC7(struct page *page, struct writeback_control *wbc)
{
	struct backing_dev_info *bdi = page->mapping->backing_dev_info;
	struct afs_writeback *wb;
	int ret;

	FUNC1("{%lx},", page->index);

	wb = (struct afs_writeback *) FUNC5(page);
	FUNC0(wb != NULL);

	ret = FUNC3(wb, page);
	FUNC6(page);
	if (ret < 0) {
		FUNC2(" = %d", ret);
		return 0;
	}

	wbc->nr_to_write -= ret;
	if (wbc->nonblocking && FUNC4(bdi))
		wbc->encountered_congestion = 1;

	FUNC2(" = 0");
	return 0;
}