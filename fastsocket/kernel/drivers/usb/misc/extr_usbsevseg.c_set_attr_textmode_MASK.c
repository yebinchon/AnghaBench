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
struct usb_sevsegdev {int textmode; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__* display_textmodes ; 
 scalar_t__ FUNC0 (scalar_t__,char const*) ; 
 struct usb_interface* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_sevsegdev*,int /*<<< orphan*/ ) ; 
 struct usb_sevsegdev* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC1(dev);
	struct usb_sevsegdev *mydev = FUNC3(intf);
	int i;

	for (i = 0; display_textmodes[i]; i++) {
		if (FUNC0(display_textmodes[i], buf)) {
			mydev->textmode = i;
			FUNC2(mydev, GFP_KERNEL);
			return count;
		}
	}

	return -EINVAL;
}