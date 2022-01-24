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
struct usb_interface {int dummy; } ;
struct usb_cytherm {TYPE_1__* udev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUTTON ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  READ_RAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 struct usb_interface* FUNC5 (struct device*) ; 
 struct usb_cytherm* FUNC6 (struct usb_interface*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr, char *buf)
{

	struct usb_interface *intf = FUNC5(dev);
	struct usb_cytherm *cytherm = FUNC6(intf);

	int retval;
	unsigned char *buffer;

	buffer = FUNC3(8, GFP_KERNEL);
	if (!buffer) {
		FUNC1(&cytherm->udev->dev, "out of memory\n");
		return 0;
	}

	/* check button */
	retval = FUNC7(cytherm->udev, READ_RAM, BUTTON, 0, buffer, 8);
	if (retval)
		FUNC0(&cytherm->udev->dev, "retval = %d\n", retval);
   
	retval = buffer[1];

	FUNC2(buffer);

	if (retval)
		return FUNC4(buf, "1");
	else
		return FUNC4(buf, "0");
}