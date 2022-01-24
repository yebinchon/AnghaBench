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
struct at91_udc {int dummy; } ;
struct TYPE_4__ {int status; int /*<<< orphan*/  (* complete ) (TYPE_1__*,TYPE_2__*) ;} ;
struct at91_request {TYPE_2__ req; int /*<<< orphan*/  queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct at91_ep {unsigned int stopped; int int_mask; int /*<<< orphan*/  queue; TYPE_1__ ep; struct at91_udc* udc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_UDP_IDR ; 
 int EINPROGRESS ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct at91_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_udc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct at91_ep *ep, struct at91_request *req, int status)
{
	unsigned	stopped = ep->stopped;
	struct at91_udc	*udc = ep->udc;

	FUNC2(&req->queue);
	if (req->req.status == -EINPROGRESS)
		req->req.status = status;
	else
		status = req->req.status;
	if (status && status != -ESHUTDOWN)
		FUNC0("%s done %p, status %d\n", ep->ep.name, req, status);

	ep->stopped = 1;
	req->req.complete(&ep->ep, &req->req);
	ep->stopped = stopped;

	/* ep0 is always ready; other endpoints need a non-empty queue */
	if (FUNC3(&ep->queue) && ep->int_mask != (1 << 0))
		FUNC1(udc, AT91_UDP_IDR, ep->int_mask);
}