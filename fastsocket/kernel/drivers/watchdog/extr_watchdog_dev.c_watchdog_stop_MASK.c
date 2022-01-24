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
struct watchdog_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  status; TYPE_1__* ops; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int (* stop ) (struct watchdog_device*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  WDOG_ACTIVE ; 
 int /*<<< orphan*/  WDOG_NO_WAY_OUT ; 
 int /*<<< orphan*/  WDOG_UNREGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct watchdog_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wddev)
{
	int err = 0;

	FUNC2(&wddev->lock);

	if (FUNC5(WDOG_UNREGISTERED, &wddev->status)) {
		err = -ENODEV;
		goto out_stop;
	}

	if (!FUNC6(wddev))
		goto out_stop;

	if (FUNC5(WDOG_NO_WAY_OUT, &wddev->status)) {
		FUNC1(wddev->dev, "nowayout prevents watchdog being stopped!\n");
		err = -EBUSY;
		goto out_stop;
	}

	err = wddev->ops->stop(wddev);
	if (err == 0)
		FUNC0(WDOG_ACTIVE, &wddev->status);

out_stop:
	FUNC3(&wddev->lock);
	return err;
}