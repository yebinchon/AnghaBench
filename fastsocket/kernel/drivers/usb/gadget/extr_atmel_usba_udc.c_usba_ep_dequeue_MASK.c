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
typedef  int u32 ;
struct usba_udc {int /*<<< orphan*/  lock; } ;
struct usba_request {int /*<<< orphan*/  queue; scalar_t__ using_dma; } ;
struct TYPE_4__ {int /*<<< orphan*/ * next; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct usba_ep {int last_dma_status; int index; TYPE_2__ queue; TYPE_1__ ep; struct usba_udc* udc; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,struct usba_request*) ; 
 int DBG_GADGET ; 
 int DBG_QUEUE ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  EPT_RST ; 
 int /*<<< orphan*/  STATUS ; 
 int USBA_DMA_CH_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usba_ep*,struct usba_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct usba_ep*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct usba_ep*) ; 
 struct usba_ep* FUNC7 (struct usb_ep*) ; 
 struct usba_request* FUNC8 (struct usb_request*) ; 
 int FUNC9 (struct usba_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usba_ep*,struct usba_request*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usba_udc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct usb_ep *_ep, struct usb_request *_req)
{
	struct usba_ep *ep = FUNC7(_ep);
	struct usba_udc *udc = ep->udc;
	struct usba_request *req = FUNC8(_req);
	unsigned long flags;
	u32 status;

	FUNC0(DBG_GADGET | DBG_QUEUE, "ep_dequeue: %s, req %p\n",
			ep->ep.name, req);

	FUNC3(&udc->lock, flags);

	if (req->using_dma) {
		/*
		 * If this request is currently being transferred,
		 * stop the DMA controller and reset the FIFO.
		 */
		if (ep->queue.next == &req->queue) {
			status = FUNC9(ep, STATUS);
			if (status & USBA_DMA_CH_EN)
				FUNC5(ep, &status);

#ifdef CONFIG_USB_GADGET_DEBUG_FS
			ep->last_dma_status = status;
#endif

			FUNC11(udc, EPT_RST, 1 << ep->index);

			FUNC10(ep, req, status);
		}
	}

	/*
	 * Errors should stop the queue from advancing until the
	 * completion function returns.
	 */
	FUNC1(&req->queue);

	FUNC2(ep, req, -ECONNRESET);

	/* Process the next request if any */
	FUNC6(ep);
	FUNC4(&udc->lock, flags);

	return 0;
}