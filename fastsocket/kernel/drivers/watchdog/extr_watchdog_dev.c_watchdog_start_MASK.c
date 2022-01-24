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
struct watchdog_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  status; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* start ) (struct watchdog_device*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  WDOG_ACTIVE ; 
 int /*<<< orphan*/  WDOG_UNREGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct watchdog_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC6(struct watchdog_device *wddev)
{
	int err = 0;

	FUNC0(&wddev->lock);

	if (FUNC4(WDOG_UNREGISTERED, &wddev->status)) {
		err = -ENODEV;
		goto out_start;
	}

	if (FUNC5(wddev))
		goto out_start;

	err = wddev->ops->start(wddev);
	if (err == 0)
		FUNC2(WDOG_ACTIVE, &wddev->status);

out_start:
	FUNC1(&wddev->lock);
	return err;
}