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
struct imx_udc_struct {scalar_t__ base; } ;

/* Variables and functions */
 int EPINTR_DEVREQ ; 
 int EPINTR_EOF ; 
 int EPINTR_EOT ; 
 int EPINTR_FIFO_EMPTY ; 
 int EPINTR_FIFO_FULL ; 
 int EPINTR_MDEVREQ ; 
 int IMX_USB_NB_EP ; 
 int INTR_FRAME_MATCH ; 
 int INTR_MSOF ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ USB_INTR ; 
 scalar_t__ USB_MASK ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

void FUNC3(struct imx_udc_struct *imx_usb)
{
	int i;

	/* Mask and clear all irqs */
	FUNC2(0xFFFFFFFF, imx_usb->base + USB_MASK);
	FUNC2(0xFFFFFFFF, imx_usb->base + USB_INTR);
	for (i = 0; i < IMX_USB_NB_EP; i++) {
		FUNC2(0x1FF, imx_usb->base + FUNC1(i));
		FUNC2(0x1FF, imx_usb->base + FUNC0(i));
	}

	/* Enable USB irqs */
	FUNC2(INTR_MSOF | INTR_FRAME_MATCH, imx_usb->base + USB_MASK);

	/* Enable EP0 irqs */
	FUNC2(0x1FF & ~(EPINTR_DEVREQ | EPINTR_MDEVREQ | EPINTR_EOT
		| EPINTR_EOF | EPINTR_FIFO_EMPTY | EPINTR_FIFO_FULL),
		imx_usb->base + FUNC1(0));
}