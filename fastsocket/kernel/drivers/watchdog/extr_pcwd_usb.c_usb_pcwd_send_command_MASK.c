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
struct usb_pcwd_private {unsigned char cmd_command; unsigned char cmd_data_msb; unsigned char cmd_data_lsb; int /*<<< orphan*/  cmd_received; int /*<<< orphan*/  interface_number; int /*<<< orphan*/  udev; int /*<<< orphan*/  exists; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HID_DT_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int USB_COMMAND_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_pcwd_private *usb_pcwd,
		unsigned char cmd, unsigned char *msb, unsigned char *lsb)
{
	int got_response, count;
	unsigned char buf[6];

	/* We will not send any commands if the USB PCWD device does
	 * not exist */
	if ((!usb_pcwd) || (!usb_pcwd->exists))
		return -1;

	/* The USB PC Watchdog uses a 6 byte report format.
	 * The board currently uses only 3 of the six bytes of the report. */
	buf[0] = cmd;			/* Byte 0 = CMD */
	buf[1] = *msb;			/* Byte 1 = Data MSB */
	buf[2] = *lsb;			/* Byte 2 = Data LSB */
	buf[3] = buf[4] = buf[5] = 0;	/* All other bytes not used */

	FUNC2("sending following data cmd=0x%02x msb=0x%02x lsb=0x%02x",
		buf[0], buf[1], buf[2]);

	FUNC1(&usb_pcwd->cmd_received, 0);

	if (FUNC4(usb_pcwd->udev, FUNC5(usb_pcwd->udev, 0),
			HID_REQ_SET_REPORT, HID_DT_REPORT,
			0x0200, usb_pcwd->interface_number, buf, sizeof(buf),
			USB_COMMAND_TIMEOUT) != sizeof(buf)) {
		FUNC2("usb_pcwd_send_command: error in usb_control_msg for "
				"cmd 0x%x 0x%x 0x%x\n", cmd, *msb, *lsb);
	}
	/* wait till the usb card processed the command,
	 * with a max. timeout of USB_COMMAND_TIMEOUT */
	got_response = 0;
	for (count = 0; (count < USB_COMMAND_TIMEOUT) && (!got_response);
								count++) {
		FUNC3(1);
		if (FUNC0(&usb_pcwd->cmd_received))
			got_response = 1;
	}

	if ((got_response) && (cmd == usb_pcwd->cmd_command)) {
		/* read back response */
		*msb = usb_pcwd->cmd_data_msb;
		*lsb = usb_pcwd->cmd_data_lsb;
	}

	return got_response;
}