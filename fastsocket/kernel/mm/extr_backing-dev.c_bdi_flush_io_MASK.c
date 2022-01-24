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
struct writeback_control {int range_cyclic; int nr_to_write; int /*<<< orphan*/ * older_than_this; int /*<<< orphan*/  sync_mode; } ;
struct backing_dev_info {int /*<<< orphan*/  wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct writeback_control*) ; 

__attribute__((used)) static void FUNC1(struct backing_dev_info *bdi)
{
	struct writeback_control wbc = {
		.sync_mode		= WB_SYNC_NONE,
		.older_than_this	= NULL,
		.range_cyclic		= 1,
		.nr_to_write		= 1024,
	};

	FUNC0(&bdi->wb, &wbc);
}