#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bdi_writeback {int /*<<< orphan*/  b_more_io; int /*<<< orphan*/  b_io; int /*<<< orphan*/  b_dirty; } ;
struct TYPE_3__ {int /*<<< orphan*/  b_more_io; int /*<<< orphan*/  b_io; int /*<<< orphan*/  b_dirty; } ;
struct backing_dev_info {int /*<<< orphan*/  completions; int /*<<< orphan*/ * bdi_stat; TYPE_1__ wb; } ;
struct TYPE_4__ {struct bdi_writeback wb; } ;

/* Variables and functions */
 int NR_BDI_STAT_ITEMS ; 
 scalar_t__ FUNC0 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct backing_dev_info*) ; 
 TYPE_2__ default_backing_dev_info ; 
 int /*<<< orphan*/  inode_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct backing_dev_info *bdi)
{
	int i;

	/*
	 * Splice our entries to the default_backing_dev_info, if this
	 * bdi disappears
	 */
	if (FUNC0(bdi)) {
		struct bdi_writeback *dst = &default_backing_dev_info.wb;

		FUNC5(&inode_lock);
		FUNC2(&bdi->wb.b_dirty, &dst->b_dirty);
		FUNC2(&bdi->wb.b_io, &dst->b_io);
		FUNC2(&bdi->wb.b_more_io, &dst->b_more_io);
		FUNC6(&inode_lock);
	}

	FUNC1(bdi);

	for (i = 0; i < NR_BDI_STAT_ITEMS; i++)
		FUNC3(&bdi->bdi_stat[i]);

	FUNC4(&bdi->completions);
}