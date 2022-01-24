#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_ctrlrequest {int bRequestType; } ;
typedef  int /*<<< orphan*/  ctrl ;
struct TYPE_3__ {int /*<<< orphan*/  ep0_action; } ;
struct TYPE_4__ {TYPE_1__ usb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_EP0_STALL ; 
 int /*<<< orphan*/  CARL9170_EP0_TRIGGER ; 
#define  USB_TYPE_CLASS 130 
 int USB_TYPE_MASK ; 
#define  USB_TYPE_STANDARD 129 
#define  USB_TYPE_VENDOR 128 
 TYPE_2__ fw ; 
 int FUNC0 (struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ctrlrequest*,int) ; 
 int FUNC2 (struct usb_ctrlrequest*) ; 
 int FUNC3 (struct usb_ctrlrequest*) ; 

void FUNC4(void)
{
	struct usb_ctrlrequest ctrl;
	int status = -1;
	FUNC1(&ctrl, sizeof(ctrl));

	switch (ctrl.bRequestType & USB_TYPE_MASK) {
	case USB_TYPE_STANDARD:
		status = FUNC2(&ctrl);
		break;

	case USB_TYPE_CLASS:
		status = FUNC0(&ctrl);
		break;

	case USB_TYPE_VENDOR:
		status = FUNC3(&ctrl);
		break;

	default:
		break;

	}

	if (status < 0)
		fw.usb.ep0_action |= CARL9170_EP0_STALL;
#ifdef CONFIG_CARL9170FW_USB_STANDARD_CMDS
	if (status > 0)
		fw.usb.ep0_action |= CARL9170_EP0_TRIGGER;
#endif /* CONFIG_CARL9170FW_USB_STANDARD_CMDS */
}