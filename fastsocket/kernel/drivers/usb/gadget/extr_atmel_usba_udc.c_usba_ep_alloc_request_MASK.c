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
struct usb_request {int /*<<< orphan*/  dma; } ;
struct usba_request {struct usb_request req; int /*<<< orphan*/  queue; } ;
struct usb_ep {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct usb_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_GADGET ; 
 int /*<<< orphan*/  DMA_ADDR_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usba_request* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct usb_request *
FUNC3(struct usb_ep *_ep, gfp_t gfp_flags)
{
	struct usba_request *req;

	FUNC0(DBG_GADGET, "ep_alloc_request: %p, 0x%x\n", _ep, gfp_flags);

	req = FUNC2(sizeof(*req), gfp_flags);
	if (!req)
		return NULL;

	FUNC1(&req->queue);
	req->req.dma = DMA_ADDR_INVALID;

	return &req->req;
}