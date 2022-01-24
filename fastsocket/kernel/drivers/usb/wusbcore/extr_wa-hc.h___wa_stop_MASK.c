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
struct wahc {TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  WA_ENABLE ; 
 int FUNC0 (struct wahc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wahc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 

__attribute__((used)) static inline int FUNC3(struct wahc *wa)
{
	int result;
	struct device *dev = &wa->usb_iface->dev;

	result = FUNC0(wa, WA_ENABLE);
	if (result < 0 && result != -ENODEV) {
		FUNC2(dev, "error commanding HC to stop: %d\n", result);
		goto out;
	}
	result = FUNC1(wa, WA_ENABLE, 0);
	if (result < 0 && result != -ENODEV)
		FUNC2(dev, "error waiting for HC to stop: %d\n", result);
out:
	return 0;
}