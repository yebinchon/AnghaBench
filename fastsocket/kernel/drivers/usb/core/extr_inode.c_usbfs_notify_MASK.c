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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_OK ; 
#define  USB_BUS_ADD 131 
#define  USB_BUS_REMOVE 130 
#define  USB_DEVICE_ADD 129 
#define  USB_DEVICE_REMOVE 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct notifier_block *self, unsigned long action, void *dev)
{
	switch (action) {
	case USB_DEVICE_ADD:
		FUNC1(dev);
		break;
	case USB_DEVICE_REMOVE:
		FUNC4(dev);
		break;
	case USB_BUS_ADD:
		FUNC0(dev);
		break;
	case USB_BUS_REMOVE:
		FUNC3(dev);
	}

	FUNC5();
	FUNC2();
	return NOTIFY_OK;
}