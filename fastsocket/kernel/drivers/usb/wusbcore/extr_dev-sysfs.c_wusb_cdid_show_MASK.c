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
struct wusb_dev {int /*<<< orphan*/  cdid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct wusb_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wusb_dev*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	ssize_t result;
	struct wusb_dev *wusb_dev;

	wusb_dev = FUNC3(FUNC2(dev));
	if (wusb_dev == NULL)
		return -ENODEV;
	result = FUNC0(buf, PAGE_SIZE, &wusb_dev->cdid);
	FUNC1(buf, "\n");
	FUNC4(wusb_dev);
	return result + 1;
}