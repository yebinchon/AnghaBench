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
struct TYPE_2__ {scalar_t__ header; } ;
struct usb_line6_pod {TYPE_1__ prog_data; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ POD_NAME_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct usb_line6_pod*,scalar_t__,char*) ; 
 struct usb_interface* FUNC1 (struct device*) ; 
 struct usb_line6_pod* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			    char *buf)
{
	struct usb_interface *interface = FUNC1(dev);
	struct usb_line6_pod *pod = FUNC2(interface);
	return FUNC0(pod, pod->prog_data.header + POD_NAME_OFFSET, buf);
}