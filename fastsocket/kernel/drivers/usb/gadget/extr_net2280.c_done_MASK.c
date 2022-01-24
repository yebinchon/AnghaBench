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
struct TYPE_5__ {int status; int /*<<< orphan*/  (* complete ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  length; int /*<<< orphan*/  actual; int /*<<< orphan*/  dma; } ;
struct net2280_request {TYPE_2__ req; scalar_t__ mapped; int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct net2280_ep {unsigned int stopped; TYPE_1__ ep; scalar_t__ is_in; struct net2280* dev; } ;
struct net2280 {int /*<<< orphan*/  lock; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ADDR_INVALID ; 
 int EINPROGRESS ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct net2280*,char*,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6 (struct net2280_ep *ep, struct net2280_request *req, int status)
{
	struct net2280		*dev;
	unsigned		stopped = ep->stopped;

	FUNC1 (&req->queue);

	if (req->req.status == -EINPROGRESS)
		req->req.status = status;
	else
		status = req->req.status;

	dev = ep->dev;
	if (req->mapped) {
		FUNC2 (dev->pdev, req->req.dma, req->req.length,
			ep->is_in ? PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);
		req->req.dma = DMA_ADDR_INVALID;
		req->mapped = 0;
	}

	if (status && status != -ESHUTDOWN)
		FUNC0 (dev, "complete %s req %p stat %d len %u/%u\n",
			ep->ep.name, &req->req, status,
			req->req.actual, req->req.length);

	/* don't modify queue heads during completion callback */
	ep->stopped = 1;
	FUNC4 (&dev->lock);
	req->req.complete (&ep->ep, &req->req);
	FUNC3 (&dev->lock);
	ep->stopped = stopped;
}