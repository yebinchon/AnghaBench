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
struct usba_udc {int /*<<< orphan*/  lock; TYPE_2__* pdev; } ;
struct TYPE_6__ {int length; scalar_t__ dma; int /*<<< orphan*/  buf; scalar_t__ no_interrupt; scalar_t__ short_not_ok; scalar_t__ zero; } ;
struct usba_request {int using_dma; int mapped; int ctrl; int /*<<< orphan*/  queue; TYPE_3__ req; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct usba_ep {int /*<<< orphan*/  queue; scalar_t__ desc; scalar_t__ is_in; TYPE_1__ ep; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  DBG_DMA ; 
 int /*<<< orphan*/  DBG_ERR ; 
 scalar_t__ DMA_ADDR_INVALID ; 
 int /*<<< orphan*/  DMA_BUF_LEN ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ESHUTDOWN ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int USBA_DMA_CH_EN ; 
 int USBA_DMA_END_BUF_EN ; 
 int USBA_DMA_END_BUF_IE ; 
 int USBA_DMA_END_TR_EN ; 
 int USBA_DMA_END_TR_IE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct usba_ep*,struct usba_request*) ; 

__attribute__((used)) static int FUNC9(struct usba_udc *udc, struct usba_ep *ep,
		struct usba_request *req, gfp_t gfp_flags)
{
	unsigned long flags;
	int ret;

	FUNC0(DBG_DMA, "%s: req l/%u d/%08x %c%c%c\n",
		ep->ep.name, req->req.length, req->req.dma,
		req->req.zero ? 'Z' : 'z',
		req->req.short_not_ok ? 'S' : 's',
		req->req.no_interrupt ? 'I' : 'i');

	if (req->req.length > 0x10000) {
		/* Lengths from 0 to 65536 (inclusive) are supported */
		FUNC0(DBG_ERR, "invalid request length %u\n", req->req.length);
		return -EINVAL;
	}

	req->using_dma = 1;

	if (req->req.dma == DMA_ADDR_INVALID) {
		req->req.dma = FUNC2(
			&udc->pdev->dev, req->req.buf, req->req.length,
			ep->is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
		req->mapped = 1;
	} else {
		FUNC3(
			&udc->pdev->dev, req->req.dma, req->req.length,
			ep->is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
		req->mapped = 0;
	}

	req->ctrl = FUNC1(DMA_BUF_LEN, req->req.length)
			| USBA_DMA_CH_EN | USBA_DMA_END_BUF_IE
			| USBA_DMA_END_TR_EN | USBA_DMA_END_TR_IE;

	if (ep->is_in)
		req->ctrl |= USBA_DMA_END_BUF_EN;

	/*
	 * Add this request to the queue and submit for DMA if
	 * possible. Check if we're still alive first -- we may have
	 * received a reset since last time we checked.
	 */
	ret = -ESHUTDOWN;
	FUNC6(&udc->lock, flags);
	if (ep->desc) {
		if (FUNC5(&ep->queue))
			FUNC8(ep, req);

		FUNC4(&req->queue, &ep->queue);
		ret = 0;
	}
	FUNC7(&udc->lock, flags);

	return ret;
}