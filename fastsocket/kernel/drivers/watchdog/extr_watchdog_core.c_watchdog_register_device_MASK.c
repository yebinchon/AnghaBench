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
struct TYPE_4__ {int dev; } ;
struct watchdog_device {scalar_t__ min_timeout; scalar_t__ max_timeout; int id; int /*<<< orphan*/  dev; int /*<<< orphan*/  parent; TYPE_2__ cdev; int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/ * info; } ;
struct TYPE_3__ {int /*<<< orphan*/ * stop; int /*<<< orphan*/ * start; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_DOGS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  watchdog_class ; 
 int FUNC7 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct watchdog_device*) ; 
 int /*<<< orphan*/  watchdog_ida ; 

int FUNC9(struct watchdog_device *wdd)
{
	int ret, id, devno;

	if (wdd == NULL || wdd->info == NULL || wdd->ops == NULL)
		return -EINVAL;

	/* Mandatory operations need to be supported */
	if (wdd->ops->start == NULL || wdd->ops->stop == NULL)
		return -EINVAL;

	/*
	 * Check that we have valid min and max timeout values, if
	 * not reset them both to 0 (=not used or unknown)
	 */
	if (wdd->min_timeout > wdd->max_timeout) {
		FUNC6("Invalid min and max timeout values, resetting to 0!\n");
		wdd->min_timeout = 0;
		wdd->max_timeout = 0;
	}

	/*
	 * Note: now that all watchdog_device data has been verified, we
	 * will not check this anymore in other functions. If data gets
	 * corrupted in a later stage then we expect a kernel panic!
	 */

	FUNC5(&wdd->lock);
	id = FUNC3(&watchdog_ida, 0, MAX_DOGS, GFP_KERNEL);
	if (id < 0)
		return id;
	wdd->id = id;

	ret = FUNC7(wdd);
	if (ret) {
		FUNC4(&watchdog_ida, id);
		if (!(id == 0 && ret == -EBUSY))
			return ret;

		/* Retry in case a legacy watchdog module exists */
		id = FUNC3(&watchdog_ida, 1, MAX_DOGS, GFP_KERNEL);
		if (id < 0)
			return id;
		wdd->id = id;

		ret = FUNC7(wdd);
		if (ret) {
			FUNC4(&watchdog_ida, id);
			return ret;
		}
	}

	devno = wdd->cdev.dev;
	wdd->dev = FUNC2(watchdog_class, wdd->parent, devno,
					NULL, "watchdog%d", wdd->id);
	if (FUNC0(wdd->dev)) {
		FUNC8(wdd);
		FUNC4(&watchdog_ida, id);
		ret = FUNC1(wdd->dev);
		return ret;
	}

	return 0;
}