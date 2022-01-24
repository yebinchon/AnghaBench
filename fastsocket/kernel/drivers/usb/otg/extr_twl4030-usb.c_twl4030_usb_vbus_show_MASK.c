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
struct twl4030_usb {scalar_t__ linkstat; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ USB_LINK_VBUS ; 
 struct twl4030_usb* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct twl4030_usb *twl = FUNC0(dev);
	unsigned long flags;
	int ret = -EINVAL;

	FUNC1(&twl->lock, flags);
	ret = FUNC3(buf, "%s\n",
			(twl->linkstat == USB_LINK_VBUS) ? "on" : "off");
	FUNC2(&twl->lock, flags);

	return ret;
}