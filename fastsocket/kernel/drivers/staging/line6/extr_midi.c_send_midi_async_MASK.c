#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_line6_pod {int dummy; } ;
struct usb_line6 {TYPE_3__* usbdev; TYPE_1__* line6midi; int /*<<< orphan*/  ifcdev; int /*<<< orphan*/  interval; int /*<<< orphan*/  ep_control_write; } ;
struct urb {scalar_t__ actual_length; } ;
struct TYPE_6__ {int idProduct; } ;
struct TYPE_7__ {TYPE_2__ descriptor; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_active_send_urbs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  LINE6_DEVID_BASSPODXT 134 
#define  LINE6_DEVID_BASSPODXTLIVE 133 
#define  LINE6_DEVID_BASSPODXTPRO 132 
#define  LINE6_DEVID_POCKETPOD 131 
#define  LINE6_DEVID_PODXT 130 
#define  LINE6_DEVID_PODXTLIVE 129 
#define  LINE6_DEVID_PODXTPRO 128 
 int /*<<< orphan*/  MISSING_CASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_line6*,char,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  midi_sent ; 
 int /*<<< orphan*/  FUNC4 (struct usb_line6_pod*,unsigned char*,int) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,TYPE_3__*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,struct usb_line6*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct usb_line6 *line6, unsigned char *data,
			   int length)
{
	struct urb *urb;
	int retval;
	unsigned char *transfer_buffer;

	urb = FUNC5(0, GFP_ATOMIC);

	if (urb == 0) {
		FUNC0(line6->ifcdev, "Out of memory\n");
		return -ENOMEM;
	}

#if DO_DUMP_URB_SEND
	line6_write_hexdump(line6, 'S', data, length);
#endif

	transfer_buffer = FUNC1(length, GFP_ATOMIC);

	if (transfer_buffer == 0) {
		FUNC7(urb);
		FUNC0(line6->ifcdev, "Out of memory\n");
		return -ENOMEM;
	}

	FUNC3(transfer_buffer, data, length);
	FUNC6(urb, line6->usbdev,
			 FUNC8(line6->usbdev,
					 line6->ep_control_write),
			 transfer_buffer, length, midi_sent, line6,
			 line6->interval);
	urb->actual_length = 0;
	retval = FUNC9(urb, GFP_ATOMIC);

	if (retval < 0) {
		FUNC0(line6->ifcdev, "usb_submit_urb failed\n");
		FUNC7(urb);
		return -EINVAL;
	}

	++line6->line6midi->num_active_send_urbs;

	switch (line6->usbdev->descriptor.idProduct) {
	case LINE6_DEVID_BASSPODXT:
	case LINE6_DEVID_BASSPODXTLIVE:
	case LINE6_DEVID_BASSPODXTPRO:
	case LINE6_DEVID_PODXT:
	case LINE6_DEVID_PODXTLIVE:
	case LINE6_DEVID_PODXTPRO:
	case LINE6_DEVID_POCKETPOD:
		FUNC4((struct usb_line6_pod *)line6, data,
				     length);
		break;

	default:
		MISSING_CASE;
	}

	return 0;
}