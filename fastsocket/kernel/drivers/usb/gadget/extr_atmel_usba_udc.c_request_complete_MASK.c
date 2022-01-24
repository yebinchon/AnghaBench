#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usba_udc {int /*<<< orphan*/  lock; TYPE_1__* pdev; } ;
struct TYPE_6__ {int status; int /*<<< orphan*/  (* complete ) (TYPE_2__*,TYPE_3__*) ;int /*<<< orphan*/  actual; int /*<<< orphan*/  dma; int /*<<< orphan*/  length; } ;
struct usba_request {TYPE_3__ req; scalar_t__ mapped; int /*<<< orphan*/  queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct usba_ep {TYPE_2__ ep; scalar_t__ is_in; struct usba_udc* udc; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,struct usba_request*,int,int /*<<< orphan*/ ) ; 
 int DBG_GADGET ; 
 int DBG_REQ ; 
 int /*<<< orphan*/  DMA_ADDR_INVALID ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC7(struct usba_ep *ep, struct usba_request *req, int status)
{
	struct usba_udc *udc = ep->udc;

	FUNC1(!FUNC3(&req->queue));

	if (req->req.status == -EINPROGRESS)
		req->req.status = status;

	if (req->mapped) {
		FUNC2(
			&udc->pdev->dev, req->req.dma, req->req.length,
			ep->is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
		req->req.dma = DMA_ADDR_INVALID;
		req->mapped = 0;
	}

	FUNC0(DBG_GADGET | DBG_REQ,
		"%s: req %p complete: status %d, actual %u\n",
		ep->ep.name, req, req->req.status, req->req.actual);

	FUNC5(&udc->lock);
	req->req.complete(&ep->ep, &req->req);
	FUNC4(&udc->lock);
}