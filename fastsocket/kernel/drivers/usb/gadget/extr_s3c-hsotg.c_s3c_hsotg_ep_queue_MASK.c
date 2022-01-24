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
struct usb_request {int /*<<< orphan*/  status; scalar_t__ actual; int /*<<< orphan*/  short_not_ok; int /*<<< orphan*/  zero; int /*<<< orphan*/  no_interrupt; int /*<<< orphan*/  buf; int /*<<< orphan*/  length; } ;
struct usb_ep {int /*<<< orphan*/  name; } ;
struct s3c_hsotg_req {int /*<<< orphan*/  queue; } ;
struct s3c_hsotg_ep {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; struct s3c_hsotg* parent; } ;
struct s3c_hsotg {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct usb_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct s3c_hsotg_ep* FUNC4 (struct usb_ep*) ; 
 struct s3c_hsotg_req* FUNC5 (struct usb_request*) ; 
 int FUNC6 (struct s3c_hsotg*,struct s3c_hsotg_ep*,struct usb_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct s3c_hsotg*,struct s3c_hsotg_ep*,struct s3c_hsotg_req*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (struct s3c_hsotg*) ; 

__attribute__((used)) static int FUNC11(struct usb_ep *ep, struct usb_request *req,
			      gfp_t gfp_flags)
{
	struct s3c_hsotg_req *hs_req = FUNC5(req);
	struct s3c_hsotg_ep *hs_ep = FUNC4(ep);
	struct s3c_hsotg *hs = hs_ep->parent;
	unsigned long irqflags;
	bool first;

	FUNC1(hs->dev, "%s: req %p: %d@%p, noi=%d, zero=%d, snok=%d\n",
		ep->name, req, req->length, req->buf, req->no_interrupt,
		req->zero, req->short_not_ok);

	/* initialise status of the request */
	FUNC0(&hs_req->queue);
	req->actual = 0;
	req->status = -EINPROGRESS;

	/* if we're using DMA, sync the buffers as necessary */
	if (FUNC10(hs)) {
		int ret = FUNC6(hs, hs_ep, req);
		if (ret)
			return ret;
	}

	FUNC8(&hs_ep->lock, irqflags);

	first = FUNC3(&hs_ep->queue);
	FUNC2(&hs_req->queue, &hs_ep->queue);

	if (first)
		FUNC7(hs, hs_ep, hs_req, false);

	FUNC9(&hs_ep->lock, irqflags);

	return 0;
}