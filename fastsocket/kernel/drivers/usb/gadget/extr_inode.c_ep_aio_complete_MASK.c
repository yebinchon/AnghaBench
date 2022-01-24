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
struct usb_request {scalar_t__ actual; scalar_t__ status; struct kiocb_priv* buf; struct kiocb* context; } ;
struct usb_ep {int /*<<< orphan*/  name; } ;
struct kiocb_priv {scalar_t__ actual; struct kiocb_priv* buf; int /*<<< orphan*/ * iv; struct ep_data* epdata; int /*<<< orphan*/ * req; } ;
struct kiocb {struct kiocb_priv* private; } ;
struct ep_data {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ep_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_ep*,struct usb_request*) ; 

__attribute__((used)) static void FUNC9(struct usb_ep *ep, struct usb_request *req)
{
	struct kiocb		*iocb = req->context;
	struct kiocb_priv	*priv = iocb->private;
	struct ep_data		*epdata = priv->epdata;

	/* lock against disconnect (and ideally, cancel) */
	FUNC5(&epdata->dev->lock);
	priv->req = NULL;
	priv->epdata = NULL;

	/* if this was a write or a read returning no data then we
	 * don't need to copy anything to userspace, so we can
	 * complete the aio request immediately.
	 */
	if (priv->iv == NULL || FUNC7(req->actual == 0)) {
		FUNC2(req->buf);
		FUNC2(priv);
		iocb->private = NULL;
		/* aio_complete() reports bytes-transferred _and_ faults */
		FUNC1(iocb, req->actual ? req->actual : req->status,
				req->status);
	} else {
		/* retry() won't report both; so we hide some faults */
		if (FUNC7(0 != req->status))
			FUNC0(epdata->dev, "%s fault %d len %d\n",
				ep->name, req->status, req->actual);

		priv->buf = req->buf;
		priv->actual = req->actual;
		FUNC3(iocb);
	}
	FUNC6(&epdata->dev->lock);

	FUNC8(ep, req);
	FUNC4(epdata);
}