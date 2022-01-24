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
struct watchdog_device {int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {unsigned int (* status ) (struct watchdog_device*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  WDOG_UNREGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct watchdog_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wddev,
							unsigned int *status)
{
	int err = 0;

	*status = 0;
	if (!wddev->ops->status)
		return -EOPNOTSUPP;

	FUNC0(&wddev->lock);

	if (FUNC3(WDOG_UNREGISTERED, &wddev->status)) {
		err = -ENODEV;
		goto out_status;
	}

	*status = wddev->ops->status(wddev);

out_status:
	FUNC1(&wddev->lock);
	return err;
}