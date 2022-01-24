#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct goku_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  pdev; } ;
struct TYPE_5__ {int status; int /*<<< orphan*/  (* complete ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  length; int /*<<< orphan*/  actual; int /*<<< orphan*/  dma; } ;
struct goku_request {TYPE_2__ req; scalar_t__ mapped; int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct goku_ep {unsigned int stopped; TYPE_1__ ep; scalar_t__ is_in; struct goku_udc* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ADDR_INVALID ; 
 int EINPROGRESS ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct goku_udc*,char*,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(struct goku_ep *ep, struct goku_request *req, int status)
{
	struct goku_udc		*dev;
	unsigned		stopped = ep->stopped;

	FUNC2(&req->queue);

	if (FUNC1(req->req.status == -EINPROGRESS))
		req->req.status = status;
	else
		status = req->req.status;

	dev = ep->dev;
	if (req->mapped) {
		FUNC3(dev->pdev, req->req.dma, req->req.length,
			ep->is_in ? PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);
		req->req.dma = DMA_ADDR_INVALID;
		req->mapped = 0;
	}

#ifndef USB_TRACE
	if (status && status != -ESHUTDOWN)
#endif
		FUNC0(dev, "complete %s req %p stat %d len %u/%u\n",
			ep->ep.name, &req->req, status,
			req->req.actual, req->req.length);

	/* don't modify queue heads during completion callback */
	ep->stopped = 1;
	FUNC5(&dev->lock);
	req->req.complete(&ep->ep, &req->req);
	FUNC4(&dev->lock);
	ep->stopped = stopped;
}