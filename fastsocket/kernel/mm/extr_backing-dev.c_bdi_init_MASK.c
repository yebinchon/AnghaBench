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
struct backing_dev_info {int max_ratio; int /*<<< orphan*/ * bdi_stat; int /*<<< orphan*/  completions; scalar_t__ dirty_exceeded; int /*<<< orphan*/  wb; int /*<<< orphan*/  work_list; int /*<<< orphan*/  wb_list; int /*<<< orphan*/  bdi_list; int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  wb_lock; int /*<<< orphan*/  max_prop_frac; scalar_t__ min_ratio; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NR_BDI_STAT_ITEMS ; 
 int /*<<< orphan*/  PROP_FRAC_BASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct backing_dev_info *bdi)
{
	int i, err;

	bdi->dev = NULL;

	bdi->min_ratio = 0;
	bdi->max_ratio = 100;
	bdi->max_prop_frac = PROP_FRAC_BASE;
	FUNC6(&bdi->wb_lock);
	FUNC1(&bdi->rcu_head);
	FUNC0(&bdi->bdi_list);
	FUNC0(&bdi->wb_list);
	FUNC0(&bdi->work_list);

	FUNC2(&bdi->wb, bdi);

	for (i = 0; i < NR_BDI_STAT_ITEMS; i++) {
		err = FUNC4(&bdi->bdi_stat[i], 0);
		if (err)
			goto err;
	}

	bdi->dirty_exceeded = 0;
	err = FUNC5(&bdi->completions);

	if (err) {
err:
		while (i--)
			FUNC3(&bdi->bdi_stat[i]);
	}

	return err;
}