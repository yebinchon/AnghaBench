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
struct usb_line6 {int /*<<< orphan*/  ifcdev; int /*<<< orphan*/  ep_control_write; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 unsigned char LINE6_CHANNEL_HOST ; 
 unsigned char LINE6_PARAM_CHANGE ; 
 int LINE6_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_line6*,char,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct usb_line6 *line6, int param, int value)
{
	int retval;
	unsigned char *buffer;
	unsigned int partial;

	buffer = FUNC2(3, GFP_KERNEL);

	if (!buffer) {
		FUNC0(line6->ifcdev, "out of memory\n");
		return -ENOMEM;
	}

	buffer[0] = LINE6_PARAM_CHANGE | LINE6_CHANNEL_HOST;
	buffer[1] = param;
	buffer[2] = value;

#if DO_DUMP_URB_SEND
	line6_write_hexdump(line6, 'S', buffer, 3);
#endif

	retval = FUNC4(line6->usbdev,
														 FUNC5(line6->usbdev, line6->ep_control_write),
														 buffer, 3, &partial, LINE6_TIMEOUT * HZ);

	if (retval)
		FUNC0(line6->ifcdev, "usb_interrupt_msg failed (%d)\n", retval);

	FUNC1(buffer);
	return retval;
}