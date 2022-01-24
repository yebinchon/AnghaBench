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
struct watchdog_device {TYPE_2__* ops; int /*<<< orphan*/  status; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_1__* info; } ;
struct inode {int dummy; } ;
struct file {struct watchdog_device* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* unref ) (struct watchdog_device*) ;int /*<<< orphan*/  owner; } ;
struct TYPE_3__ {int options; } ;

/* Variables and functions */
 int EBUSY ; 
 int WDIOF_MAGICCLOSE ; 
 int /*<<< orphan*/  WDOG_ALLOW_RELEASE ; 
 int /*<<< orphan*/  WDOG_DEV_OPEN ; 
 int /*<<< orphan*/  WDOG_UNREGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct watchdog_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct watchdog_device*) ; 
 int FUNC9 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *file)
{
	struct watchdog_device *wdd = file->private_data;
	int err = -EBUSY;

	/*
	 * We only stop the watchdog if we received the magic character
	 * or if WDIOF_MAGICCLOSE is not set. If nowayout was set then
	 * watchdog_stop will fail.
	 */
	if (FUNC6(WDOG_ALLOW_RELEASE, &wdd->status) ||
	    !(wdd->info->options & WDIOF_MAGICCLOSE))
		err = FUNC9(wdd);

	/* If the watchdog was not stopped, send a keepalive ping */
	if (err < 0) {
		FUNC3(&wdd->lock);
		if (!FUNC7(WDOG_UNREGISTERED, &wdd->status))
			FUNC1(wdd->dev, "watchdog did not stop!\n");
		FUNC4(&wdd->lock);
		FUNC8(wdd);
	}

	/* Allow the owner module to be unloaded again */
	FUNC2(wdd->ops->owner);

	/* make sure that /dev/watchdog can be re-opened */
	FUNC0(WDOG_DEV_OPEN, &wdd->status);

	/* Note wdd may be gone after this, do not use after this! */
	if (wdd->ops->unref)
		wdd->ops->unref(wdd);

	return 0;
}