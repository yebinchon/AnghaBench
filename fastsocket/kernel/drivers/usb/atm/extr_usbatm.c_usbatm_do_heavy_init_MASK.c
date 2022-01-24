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
struct usbatm_data {int /*<<< orphan*/  thread_exited; int /*<<< orphan*/  serialize; int /*<<< orphan*/ * thread; int /*<<< orphan*/  usb_intf; TYPE_1__* driver; int /*<<< orphan*/  thread_started; } ;
struct TYPE_2__ {int (* heavy_init ) (struct usbatm_data*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct usbatm_data*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct usbatm_data*) ; 

__attribute__((used)) static int FUNC7(void *arg)
{
	struct usbatm_data *instance = arg;
	int ret;

	FUNC0(SIGTERM);
	FUNC1(&instance->thread_started);

	ret = instance->driver->heavy_init(instance, instance->usb_intf);

	if (!ret)
		ret = FUNC6(instance);

	FUNC3(&instance->serialize);
	instance->thread = NULL;
	FUNC4(&instance->serialize);

	FUNC2(&instance->thread_exited, ret);
}