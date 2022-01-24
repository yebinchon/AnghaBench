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
 int NOTIFY_BAD ; 
 int NOTIFY_OK ; 
#define  USB_DEVICE_ADD 129 
#define  USB_DEVICE_REMOVE 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *self,
			       unsigned long action, void *dev)
{
	switch (action) {
	case USB_DEVICE_ADD:
		if (FUNC0(dev))
			return NOTIFY_BAD;
		break;
	case USB_DEVICE_REMOVE:
		FUNC1(dev);
		FUNC2(dev);
		break;
	}
	return NOTIFY_OK;
}