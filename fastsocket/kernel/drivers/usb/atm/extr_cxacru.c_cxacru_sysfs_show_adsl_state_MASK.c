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
typedef  int u32 ;
struct usbatm_data {struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxacru_data {int* card_info; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 size_t CXINF_LINE_STARTABLE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,...) ; 
 struct usb_interface* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct usbatm_data* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	struct usb_interface *intf = FUNC2(dev);
	struct usbatm_data *usbatm_instance = FUNC4(intf);
	struct cxacru_data *instance = usbatm_instance->driver_data;
	u32 value = instance->card_info[CXINF_LINE_STARTABLE];

	static char *str[] = { "running", "stopped" };
	if (FUNC3(value >= FUNC0(str)))
		return FUNC1(buf, PAGE_SIZE, "%u\n", value);
	return FUNC1(buf, PAGE_SIZE, "%s\n", str[value]);
}