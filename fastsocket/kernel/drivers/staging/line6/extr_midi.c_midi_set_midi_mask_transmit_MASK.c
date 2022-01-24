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
struct usb_line6 {TYPE_1__* line6midi; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int midi_mask_transmit; } ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *,int) ; 
 struct usb_interface* FUNC1 (struct device*) ; 
 struct usb_line6* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					   struct device_attribute *attr,
					   const char *buf, size_t count)
{
	struct usb_interface *interface = FUNC1(dev);
	struct usb_line6 *line6 = FUNC2(interface);
	int value = FUNC0(buf, NULL, 10);
	line6->line6midi->midi_mask_transmit = value;
	return count;
}