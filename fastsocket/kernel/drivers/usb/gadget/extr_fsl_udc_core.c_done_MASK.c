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
struct fsl_udc {int /*<<< orphan*/  td_pool; } ;
struct TYPE_11__ {int status; int /*<<< orphan*/  (* complete ) (TYPE_4__*,TYPE_5__*) ;int /*<<< orphan*/  length; int /*<<< orphan*/  actual; int /*<<< orphan*/  dma; } ;
struct fsl_req {int dtd_count; TYPE_5__ req; scalar_t__ mapped; struct ep_td_struct* head; int /*<<< orphan*/  queue; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct fsl_ep {unsigned char stopped; TYPE_3__* udc; TYPE_4__ ep; } ;
struct ep_td_struct {int /*<<< orphan*/  td_dma; struct ep_td_struct* next_td_virt; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; TYPE_2__ gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ADDR_INVALID ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINPROGRESS ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ep_td_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct fsl_ep*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_5__*) ; 

__attribute__((used)) static void FUNC9(struct fsl_ep *ep, struct fsl_req *req, int status)
{
	struct fsl_udc *udc = NULL;
	unsigned char stopped = ep->stopped;
	struct ep_td_struct *curr_td, *next_td;
	int j;

	udc = (struct fsl_udc *)ep->udc;
	/* Removed the req from fsl_ep->queue */
	FUNC5(&req->queue);

	/* req.status should be set as -EINPROGRESS in ep_queue() */
	if (req->req.status == -EINPROGRESS)
		req->req.status = status;
	else
		status = req->req.status;

	/* Free dtd for the request */
	next_td = req->head;
	for (j = 0; j < req->dtd_count; j++) {
		curr_td = next_td;
		if (j != req->dtd_count - 1) {
			next_td = curr_td->next_td_virt;
		}
		FUNC1(udc->td_pool, curr_td, curr_td->td_dma);
	}

	if (req->mapped) {
		FUNC3(ep->udc->gadget.dev.parent,
			req->req.dma, req->req.length,
			FUNC4(ep)
				? DMA_TO_DEVICE
				: DMA_FROM_DEVICE);
		req->req.dma = DMA_ADDR_INVALID;
		req->mapped = 0;
	} else
		FUNC2(ep->udc->gadget.dev.parent,
			req->req.dma, req->req.length,
			FUNC4(ep)
				? DMA_TO_DEVICE
				: DMA_FROM_DEVICE);

	if (status && (status != -ESHUTDOWN))
		FUNC0("complete %s req %p stat %d len %u/%u",
			ep->ep.name, &req->req, status,
			req->req.actual, req->req.length);

	ep->stopped = 1;

	FUNC7(&ep->udc->lock);
	/* complete() is from gadget layer,
	 * eg fsg->bulk_in_complete() */
	if (req->req.complete)
		req->req.complete(&ep->ep, &req->req);

	FUNC6(&ep->udc->lock);
	ep->stopped = stopped;
}