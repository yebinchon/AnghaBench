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
struct usb_endpoint_descriptor {unsigned int bInterval; int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bmAttributes; int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
#define  USB_ENDPOINT_XFER_BULK 131 
#define  USB_ENDPOINT_XFER_CONTROL 130 
#define  USB_ENDPOINT_XFER_INT 129 
#define  USB_ENDPOINT_XFER_ISOC 128 
 int USB_SPEED_HIGH ; 
 char* format_endpt ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,char*,int,unsigned int,char) ; 
 scalar_t__ FUNC2 (struct usb_endpoint_descriptor const*) ; 
 int FUNC3 (struct usb_endpoint_descriptor const*) ; 

__attribute__((used)) static char *FUNC4(int speed, char *start, char *end,
				const struct usb_endpoint_descriptor *desc)
{
	char dir, unit, *type;
	unsigned interval, bandwidth = 1;

	if (start > end)
		return start;

	dir = FUNC2(desc) ? 'I' : 'O';

	if (speed == USB_SPEED_HIGH) {
		switch (FUNC0(desc->wMaxPacketSize) & (0x03 << 11)) {
		case 1 << 11:	bandwidth = 2; break;
		case 2 << 11:	bandwidth = 3; break;
		}
	}

	/* this isn't checking for illegal values */
	switch (FUNC3(desc)) {
	case USB_ENDPOINT_XFER_CONTROL:
		type = "Ctrl";
		if (speed == USB_SPEED_HIGH) 	/* uframes per NAK */
			interval = desc->bInterval;
		else
			interval = 0;
		dir = 'B';			/* ctrl is bidirectional */
		break;
	case USB_ENDPOINT_XFER_ISOC:
		type = "Isoc";
		interval = 1 << (desc->bInterval - 1);
		break;
	case USB_ENDPOINT_XFER_BULK:
		type = "Bulk";
		if (speed == USB_SPEED_HIGH && dir == 'O') /* uframes per NAK */
			interval = desc->bInterval;
		else
			interval = 0;
		break;
	case USB_ENDPOINT_XFER_INT:
		type = "Int.";
		if (speed == USB_SPEED_HIGH)
			interval = 1 << (desc->bInterval - 1);
		else
			interval = desc->bInterval;
		break;
	default:	/* "can't happen" */
		return start;
	}
	interval *= (speed == USB_SPEED_HIGH) ? 125 : 1000;
	if (interval % 1000)
		unit = 'u';
	else {
		unit = 'm';
		interval /= 1000;
	}

	start += FUNC1(start, format_endpt, desc->bEndpointAddress, dir,
			 desc->bmAttributes, type,
			 (FUNC0(desc->wMaxPacketSize) & 0x07ff) *
			 bandwidth,
			 interval, unit);
	return start;
}