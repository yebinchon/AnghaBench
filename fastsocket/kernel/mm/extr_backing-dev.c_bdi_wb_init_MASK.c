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
struct bdi_writeback {int /*<<< orphan*/  b_more_io; int /*<<< orphan*/  b_io; int /*<<< orphan*/  b_dirty; int /*<<< orphan*/  last_old_flush; struct backing_dev_info* bdi; } ;
struct backing_dev_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct bdi_writeback*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct bdi_writeback *wb, struct backing_dev_info *bdi)
{
	FUNC1(wb, 0, sizeof(*wb));

	wb->bdi = bdi;
	wb->last_old_flush = jiffies;
	FUNC0(&wb->b_dirty);
	FUNC0(&wb->b_io);
	FUNC0(&wb->b_more_io);
}