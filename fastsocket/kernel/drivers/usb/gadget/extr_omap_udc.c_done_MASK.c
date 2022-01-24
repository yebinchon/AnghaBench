#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int status; int /*<<< orphan*/  (* complete ) (TYPE_4__*,TYPE_5__*) ;int /*<<< orphan*/  length; int /*<<< orphan*/  actual; int /*<<< orphan*/  dma; } ;
struct omap_req {TYPE_5__ req; scalar_t__ mapped; int /*<<< orphan*/  queue; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct omap_ep {unsigned int stopped; int bEndpointAddress; TYPE_3__* udc; TYPE_4__ ep; scalar_t__ has_dma; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; TYPE_2__ gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ADDR_INVALID ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINPROGRESS ; 
 int ESHUTDOWN ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ use_dma ; 

__attribute__((used)) static void
FUNC7(struct omap_ep *ep, struct omap_req *req, int status)
{
	unsigned		stopped = ep->stopped;

	FUNC3(&req->queue);

	if (req->req.status == -EINPROGRESS)
		req->req.status = status;
	else
		status = req->req.status;

	if (use_dma && ep->has_dma) {
		if (req->mapped) {
			FUNC2(ep->udc->gadget.dev.parent,
				req->req.dma, req->req.length,
				(ep->bEndpointAddress & USB_DIR_IN)
					? DMA_TO_DEVICE
					: DMA_FROM_DEVICE);
			req->req.dma = DMA_ADDR_INVALID;
			req->mapped = 0;
		} else
			FUNC1(ep->udc->gadget.dev.parent,
				req->req.dma, req->req.length,
				(ep->bEndpointAddress & USB_DIR_IN)
					? DMA_TO_DEVICE
					: DMA_FROM_DEVICE);
	}

#ifndef	USB_TRACE
	if (status && status != -ESHUTDOWN)
#endif
		FUNC0("complete %s req %p stat %d len %u/%u\n",
			ep->ep.name, &req->req, status,
			req->req.actual, req->req.length);

	/* don't modify queue heads during completion callback */
	ep->stopped = 1;
	FUNC5(&ep->udc->lock);
	req->req.complete(&ep->ep, &req->req);
	FUNC4(&ep->udc->lock);
	ep->stopped = stopped;
}