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
struct usb_device {scalar_t__ speed; } ;
struct urb {int interval; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTERRUPT_RATE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  URB_SHORT_NOT_OK ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  simple_callback ; 
 struct urb* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,struct usb_device*,int,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct urb *FUNC6 (
	struct usb_device	*udev,
	int			pipe,
	unsigned long		bytes
)
{
	struct urb		*urb;

	urb = FUNC1 (0, GFP_KERNEL);
	if (!urb)
		return urb;
	FUNC3 (urb, udev, pipe, NULL, bytes, simple_callback, NULL);
	urb->interval = (udev->speed == USB_SPEED_HIGH)
			? (INTERRUPT_RATE << 3)
			: INTERRUPT_RATE;
	urb->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
	if (FUNC5 (pipe))
		urb->transfer_flags |= URB_SHORT_NOT_OK;
	urb->transfer_buffer = FUNC2 (udev, bytes, GFP_KERNEL,
			&urb->transfer_dma);
	if (!urb->transfer_buffer) {
		FUNC4 (urb);
		urb = NULL;
	} else
		FUNC0 (urb->transfer_buffer, 0, bytes);
	return urb;
}