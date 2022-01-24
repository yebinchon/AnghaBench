#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct fsl_udc {int remote_wakeup; int /*<<< orphan*/  ep0_state; struct fsl_req* status_req; int /*<<< orphan*/  ep0_dir; struct fsl_ep* eps; } ;
struct TYPE_2__ {int length; int /*<<< orphan*/ * complete; scalar_t__ actual; int /*<<< orphan*/  status; scalar_t__ buf; } ;
struct fsl_req {int /*<<< orphan*/  queue; scalar_t__ dtd_count; TYPE_1__ req; struct fsl_ep* ep; } ;
struct fsl_ep {int /*<<< orphan*/  queue; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_STATE_XMIT ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int USB_DEVICE_REMOTE_WAKEUP ; 
 int USB_DEVICE_SELF_POWERED ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int USB_ENDPOINT_HALT ; 
 int USB_RECIP_DEVICE ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_RECIP_MASK ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsl_ep*,struct fsl_req*) ; 
 scalar_t__ FUNC6 (struct fsl_req*) ; 
 struct fsl_ep* FUNC7 (struct fsl_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct fsl_udc *udc, u8 request_type, u16 value,
		u16 index, u16 length)
{
	u16 tmp = 0;		/* Status, cpu endian */
	struct fsl_req *req;
	struct fsl_ep *ep;

	ep = &udc->eps[0];

	if ((request_type & USB_RECIP_MASK) == USB_RECIP_DEVICE) {
		/* Get device status */
		tmp = 1 << USB_DEVICE_SELF_POWERED;
		tmp |= udc->remote_wakeup << USB_DEVICE_REMOTE_WAKEUP;
	} else if ((request_type & USB_RECIP_MASK) == USB_RECIP_INTERFACE) {
		/* Get interface status */
		/* We don't have interface information in udc driver */
		tmp = 0;
	} else if ((request_type & USB_RECIP_MASK) == USB_RECIP_ENDPOINT) {
		/* Get endpoint status */
		struct fsl_ep *target_ep;

		target_ep = FUNC7(udc, FUNC8(index));

		/* stall if endpoint doesn't exist */
		if (!target_ep->desc)
			goto stall;
		tmp = FUNC1(FUNC3(target_ep), FUNC4(target_ep))
				<< USB_ENDPOINT_HALT;
	}

	udc->ep0_dir = USB_DIR_IN;
	/* Borrow the per device status_req */
	req = udc->status_req;
	/* Fill in the reqest structure */
	*((u16 *) req->req.buf) = FUNC0(tmp);
	req->ep = ep;
	req->req.length = 2;
	req->req.status = -EINPROGRESS;
	req->req.actual = 0;
	req->req.complete = NULL;
	req->dtd_count = 0;

	/* prime the data phase */
	if ((FUNC6(req) == 0))
		FUNC5(ep, req);
	else			/* no mem */
		goto stall;

	FUNC9(&req->queue, &ep->queue);
	udc->ep0_state = DATA_STATE_XMIT;
	return;
stall:
	FUNC2(udc);
}