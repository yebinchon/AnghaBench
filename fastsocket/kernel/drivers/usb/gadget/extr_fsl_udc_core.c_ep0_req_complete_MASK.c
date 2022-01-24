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
typedef  int u32 ;
struct fsl_udc {scalar_t__ usb_state; int ep0_state; int /*<<< orphan*/  device_address; } ;
struct fsl_req {int dummy; } ;
struct fsl_ep {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  deviceaddr; } ;

/* Variables and functions */
#define  DATA_STATE_RECV 131 
#define  DATA_STATE_XMIT 130 
 int /*<<< orphan*/  EP_DIR_IN ; 
 int /*<<< orphan*/  EP_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int USB_DEVICE_ADDRESS_BIT_POS ; 
 scalar_t__ USB_STATE_ADDRESS ; 
#define  WAIT_FOR_OUT_STATUS 129 
#define  WAIT_FOR_SETUP 128 
 int /*<<< orphan*/  FUNC1 (struct fsl_ep*,struct fsl_req*,int /*<<< orphan*/ ) ; 
 TYPE_1__* dr_regs ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_udc*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct fsl_udc *udc, struct fsl_ep *ep0,
		struct fsl_req *req)
{
	if (udc->usb_state == USB_STATE_ADDRESS) {
		/* Set the new address */
		u32 new_address = (u32) udc->device_address;
		FUNC4(new_address << USB_DEVICE_ADDRESS_BIT_POS,
				&dr_regs->deviceaddr);
	}

	FUNC1(ep0, req, 0);

	switch (udc->ep0_state) {
	case DATA_STATE_XMIT:
		/* receive status phase */
		if (FUNC2(udc, EP_DIR_OUT))
			FUNC3(udc);
		break;
	case DATA_STATE_RECV:
		/* send status phase */
		if (FUNC2(udc, EP_DIR_IN))
			FUNC3(udc);
		break;
	case WAIT_FOR_OUT_STATUS:
		udc->ep0_state = WAIT_FOR_SETUP;
		break;
	case WAIT_FOR_SETUP:
		FUNC0("Unexpect ep0 packets\n");
		break;
	default:
		FUNC3(udc);
		break;
	}
}