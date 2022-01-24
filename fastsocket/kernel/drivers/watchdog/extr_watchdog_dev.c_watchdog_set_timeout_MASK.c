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
struct watchdog_device {unsigned int max_timeout; unsigned int min_timeout; int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/  status; TYPE_2__* info; } ;
struct TYPE_4__ {int options; } ;
struct TYPE_3__ {int (* set_timeout ) (struct watchdog_device*,unsigned int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int WDIOF_SETTIMEOUT ; 
 int /*<<< orphan*/  WDOG_UNREGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct watchdog_device*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wddev,
							unsigned int timeout)
{
	int err;

	if ((wddev->ops->set_timeout == NULL) ||
	    !(wddev->info->options & WDIOF_SETTIMEOUT))
		return -EOPNOTSUPP;

	if ((wddev->max_timeout != 0) &&
	    (timeout < wddev->min_timeout || timeout > wddev->max_timeout))
		return -EINVAL;

	FUNC0(&wddev->lock);

	if (FUNC3(WDOG_UNREGISTERED, &wddev->status)) {
		err = -ENODEV;
		goto out_timeout;
	}

	err = wddev->ops->set_timeout(wddev, timeout);

out_timeout:
	FUNC1(&wddev->lock);
	return err;
}