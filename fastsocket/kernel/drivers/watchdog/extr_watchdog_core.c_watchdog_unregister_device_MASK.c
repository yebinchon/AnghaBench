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
struct TYPE_2__ {int dev; } ;
struct watchdog_device {int /*<<< orphan*/ * dev; int /*<<< orphan*/  id; TYPE_1__ cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  watchdog_class ; 
 int FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  watchdog_ida ; 

void FUNC4(struct watchdog_device *wdd)
{
	int ret;
	int devno;

	if (wdd == NULL)
		return;

	devno = wdd->cdev.dev;
	ret = FUNC3(wdd);
	if (ret)
		FUNC2("error unregistering /dev/watchdog (err=%d)\n", ret);
	FUNC0(watchdog_class, devno);
	FUNC1(&watchdog_ida, wdd->id);
	wdd->dev = NULL;
}