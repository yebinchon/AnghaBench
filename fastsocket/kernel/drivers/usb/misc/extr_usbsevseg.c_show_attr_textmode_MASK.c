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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 char** display_textmodes ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct usb_interface* FUNC2 (struct device*) ; 
 struct usb_sevsegdev* FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	struct usb_interface *intf = FUNC2(dev);
	struct usb_sevsegdev *mydev = FUNC3(intf);
	int i;

	buf[0] = 0;

	for (i = 0; display_textmodes[i]; i++) {
		if (mydev->textmode == i) {
			FUNC0(buf, " [");
			FUNC0(buf, display_textmodes[i]);
			FUNC0(buf, "] ");
		} else {
			FUNC0(buf, " ");
			FUNC0(buf, display_textmodes[i]);
			FUNC0(buf, " ");
		}
	}
	FUNC0(buf, "\n");


	return FUNC1(buf);
}