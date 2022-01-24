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
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WRITE_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct usb_interface* FUNC5 (struct device*) ; 
 struct usb_cytherm* FUNC6 (struct usb_interface*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int,unsigned char*,int) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC5(dev);
	struct usb_cytherm *cytherm = FUNC6(intf);

	unsigned char *buffer;
	int retval;
	int tmp;
   
	buffer = FUNC3(8, GFP_KERNEL);
	if (!buffer) {
		FUNC1(&cytherm->udev->dev, "out of memory\n");
		return 0;
	}

	tmp = FUNC4(buf, NULL, 10);
   
	if (tmp > 0xFF)
		tmp = 0xFF;
	else if (tmp < 0)
		tmp = 0;
   
	retval = FUNC7(cytherm->udev, WRITE_PORT, 1,
				tmp, buffer, 8);
	if (retval)
		FUNC0(&cytherm->udev->dev, "retval = %d\n", retval);

	FUNC2(buffer);

	return count;
}