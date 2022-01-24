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
struct printer_dev {int interface; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESPIPE ; 
 int /*<<< orphan*/  FUNC0 (struct printer_dev*,char*,...) ; 
#define  PRINTER_INTERFACE 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct printer_dev*) ; 
 int FUNC3 (struct printer_dev*) ; 

__attribute__((used)) static int
FUNC4(struct printer_dev *dev, unsigned number)
{
	int			result = 0;

	if (FUNC1(dev->gadget) && dev->interface < 0) {
		/* tx fifo is full, but we can't clear it...*/
		FUNC0(dev, "can't change interfaces\n");
		return -ESPIPE;
	}

	/* Free the current interface */
	switch (dev->interface) {
	case PRINTER_INTERFACE:
		FUNC2(dev);
		break;
	}

	switch (number) {
	case PRINTER_INTERFACE:
		result = FUNC3(dev);
		if (result) {
			FUNC2(dev);
		} else {
			dev->interface = PRINTER_INTERFACE;
		}
		break;
	default:
		result = -EINVAL;
		/* FALL THROUGH */
	}

	if (!result)
		FUNC0(dev, "Using interface %x\n", number);

	return result;
}