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
struct TYPE_5__ {int /*<<< orphan*/  controller; scalar_t__ uses_dma; } ;
struct usb_hcd {TYPE_2__* driver; TYPE_1__ self; } ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int transfer_flags; void* setup_packet; scalar_t__ transfer_buffer_length; void* transfer_buffer; void* setup_dma; TYPE_4__* dev; TYPE_3__* ep; void* transfer_dma; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {int /*<<< orphan*/  bus; } ;
struct TYPE_7__ {int /*<<< orphan*/  desc; } ;
struct TYPE_6__ {int flags; } ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int HCD_LOCAL_MEM ; 
 int URB_NO_SETUP_DMA_MAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,void**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void**,void**,int,int) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct urb*) ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *hcd, struct urb *urb,
			   gfp_t mem_flags)
{
	enum dma_data_direction dir;
	int ret = 0;

	/* Map the URB's buffers for DMA access.
	 * Lower level HCD code should use *_dma exclusively,
	 * unless it uses pio or talks to another transport,
	 * or uses the provided scatter gather list for bulk.
	 */
	if (FUNC3(urb->dev))
		return 0;

	if (FUNC4(&urb->ep->desc)
	    && !(urb->transfer_flags & URB_NO_SETUP_DMA_MAP)) {
		if (hcd->self.uses_dma)
			urb->setup_dma = FUNC0(
					hcd->self.controller,
					urb->setup_packet,
					sizeof(struct usb_ctrlrequest),
					DMA_TO_DEVICE);
		else if (hcd->driver->flags & HCD_LOCAL_MEM)
			ret = FUNC1(
					urb->dev->bus, mem_flags,
					&urb->setup_dma,
					(void **)&urb->setup_packet,
					sizeof(struct usb_ctrlrequest),
					DMA_TO_DEVICE);
	}

	dir = FUNC5(urb) ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
	if (ret == 0 && urb->transfer_buffer_length != 0
	    && !(urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)) {
		if (hcd->self.uses_dma)
			urb->transfer_dma = FUNC0 (
					hcd->self.controller,
					urb->transfer_buffer,
					urb->transfer_buffer_length,
					dir);
		else if (hcd->driver->flags & HCD_LOCAL_MEM) {
			ret = FUNC1(
					urb->dev->bus, mem_flags,
					&urb->transfer_dma,
					&urb->transfer_buffer,
					urb->transfer_buffer_length,
					dir);

			if (ret && FUNC4(&urb->ep->desc)
			    && !(urb->transfer_flags & URB_NO_SETUP_DMA_MAP))
				FUNC2(urb->dev->bus,
					&urb->setup_dma,
					(void **)&urb->setup_packet,
					sizeof(struct usb_ctrlrequest),
					DMA_TO_DEVICE);
		}
	}
	return ret;
}