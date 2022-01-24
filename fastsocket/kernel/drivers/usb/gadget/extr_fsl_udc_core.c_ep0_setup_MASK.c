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
struct fsl_udc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ENDPOINT_XFER_CONTROL ; 
 int /*<<< orphan*/  USB_MAX_CTRL_PAYLOAD ; 
 int /*<<< orphan*/  USB_RECV ; 
 int /*<<< orphan*/  USB_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fsl_udc *udc)
{
	/* the intialization of an ep includes: fields in QH, Regs,
	 * fsl_ep struct */
	FUNC1(udc, 0, USB_RECV, USB_ENDPOINT_XFER_CONTROL,
			USB_MAX_CTRL_PAYLOAD, 0, 0);
	FUNC1(udc, 0, USB_SEND, USB_ENDPOINT_XFER_CONTROL,
			USB_MAX_CTRL_PAYLOAD, 0, 0);
	FUNC0(0, USB_RECV, USB_ENDPOINT_XFER_CONTROL);
	FUNC0(0, USB_SEND, USB_ENDPOINT_XFER_CONTROL);

	return;

}