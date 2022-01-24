#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  controller; scalar_t__ uses_dma; } ;
struct usb_hcd {TYPE_3__* driver; TYPE_2__ self; } ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int transfer_flags; int transfer_buffer_length; void* transfer_buffer; int /*<<< orphan*/  transfer_dma; TYPE_4__* dev; int /*<<< orphan*/  setup_packet; int /*<<< orphan*/  setup_dma; TYPE_1__* ep; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {int /*<<< orphan*/  bus; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int HCD_LOCAL_MEM ; 
 int URB_NO_SETUP_DMA_MAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int,int) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct urb*) ; 

__attribute__((used)) static void FUNC5(struct usb_hcd *hcd, struct urb *urb)
{
	enum dma_data_direction dir;

	if (FUNC2(urb->dev))
		return;

	if (FUNC3(&urb->ep->desc)
	    && !(urb->transfer_flags & URB_NO_SETUP_DMA_MAP)) {
		if (hcd->self.uses_dma)
			FUNC0(hcd->self.controller, urb->setup_dma,
					sizeof(struct usb_ctrlrequest),
					DMA_TO_DEVICE);
		else if (hcd->driver->flags & HCD_LOCAL_MEM)
			FUNC1(urb->dev->bus, &urb->setup_dma,
					(void **)&urb->setup_packet,
					sizeof(struct usb_ctrlrequest),
					DMA_TO_DEVICE);
	}

	dir = FUNC4(urb) ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
	if (urb->transfer_buffer_length != 0
	    && !(urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)) {
		if (hcd->self.uses_dma)
			FUNC0(hcd->self.controller,
					urb->transfer_dma,
					urb->transfer_buffer_length,
					dir);
		else if (hcd->driver->flags & HCD_LOCAL_MEM)
			FUNC1(urb->dev->bus, &urb->transfer_dma,
					&urb->transfer_buffer,
					urb->transfer_buffer_length,
					dir);
	}
}