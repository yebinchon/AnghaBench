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
struct usb_pcwd_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_READ_WATCHDOG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct usb_pcwd_private*,int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 

__attribute__((used)) static int FUNC1(struct usb_pcwd_private *usb_pcwd,
								int *time_left)
{
	unsigned char msb, lsb;

	/* Read the time that's left before rebooting */
	/* Note: if the board is not yet armed then we will read 0xFFFF */
	FUNC0(usb_pcwd, CMD_READ_WATCHDOG_TIMEOUT, &msb, &lsb);

	*time_left = (msb << 8) + lsb;

	return 0;
}