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

/* Variables and functions */
 int /*<<< orphan*/  BW_HOST_DELAY ; 
 int BW_HUB_LS_SETUP ; 
 long FUNC0 (int) ; 
 unsigned long FUNC1 (int) ; 
 unsigned long FUNC2 (int) ; 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_LOW 128 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbcore_name ; 

long FUNC4 (int speed, int is_input, int isoc, int bytecount)
{
	unsigned long	tmp;

	switch (speed) {
	case USB_SPEED_LOW: 	/* INTR only */
		if (is_input) {
			tmp = (67667L * (31L + 10L * FUNC0 (bytecount))) / 1000L;
			return (64060L + (2 * BW_HUB_LS_SETUP) + BW_HOST_DELAY + tmp);
		} else {
			tmp = (66700L * (31L + 10L * FUNC0 (bytecount))) / 1000L;
			return (64107L + (2 * BW_HUB_LS_SETUP) + BW_HOST_DELAY + tmp);
		}
	case USB_SPEED_FULL:	/* ISOC or INTR */
		if (isoc) {
			tmp = (8354L * (31L + 10L * FUNC0 (bytecount))) / 1000L;
			return (((is_input) ? 7268L : 6265L) + BW_HOST_DELAY + tmp);
		} else {
			tmp = (8354L * (31L + 10L * FUNC0 (bytecount))) / 1000L;
			return (9107L + BW_HOST_DELAY + tmp);
		}
	case USB_SPEED_HIGH:	/* ISOC or INTR */
		// FIXME adjust for input vs output
		if (isoc)
			tmp = FUNC2 (bytecount);
		else
			tmp = FUNC1 (bytecount);
		return tmp;
	default:
		FUNC3 ("%s: bogus device speed!\n", usbcore_name);
		return -1;
	}
}