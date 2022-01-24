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
struct usb_host_config {char* string; } ;
struct usb_device {struct usb_host_config* actconfig; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 struct usb_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct usb_device *udev;
	struct usb_host_config *actconfig;

	udev = FUNC1(dev);
	actconfig = udev->actconfig;
	if ((!actconfig) || (!actconfig->string))
		return 0;
	return FUNC0(buf, "%s\n", actconfig->string);
}