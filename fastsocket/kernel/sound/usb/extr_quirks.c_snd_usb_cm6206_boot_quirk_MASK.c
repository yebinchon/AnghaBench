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
struct usb_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (struct usb_device*,int,int) ; 

__attribute__((used)) static int FUNC2(struct usb_device *dev)
{
	int err  = 0, reg;
	int val[] = {0x2004, 0x3000, 0xf800, 0x143f, 0x0000, 0x3000};

	for (reg = 0; reg < FUNC0(val); reg++) {
		err = FUNC1(dev, reg, val[reg]);
		if (err < 0)
			return err;
	}

	return err;
}