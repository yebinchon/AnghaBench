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
struct wusbhc {int /*<<< orphan*/  mutex; } ;
struct wusb_dev {int dummy; } ;
struct wahc {struct wusbhc* wusb; } ;
struct wa_xfer {int result; int /*<<< orphan*/  lock; TYPE_1__* ep; struct wusb_dev* wusb_dev; int /*<<< orphan*/  gfp; struct wahc* wa; struct urb* urb; } ;
struct urb {int status; int /*<<< orphan*/ * dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  hcpriv; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ENODEV ; 
 unsigned int FUNC0 (struct wa_xfer*) ; 
 int FUNC1 (struct wa_xfer*,struct urb*) ; 
 int FUNC2 (struct wa_xfer*) ; 
 struct wusb_dev* FUNC3 (struct wusbhc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct wahc*,TYPE_1__*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct wa_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct wa_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct wusb_dev*) ; 

__attribute__((used)) static void FUNC13(struct wa_xfer *xfer)
{
	int result;
	unsigned long flags;
	struct urb *urb = xfer->urb;
	struct wahc *wa = xfer->wa;
	struct wusbhc *wusbhc = wa->wusb;
	struct wusb_dev *wusb_dev;
	unsigned done;

	result = FUNC6(wa, xfer->ep, urb, xfer->gfp);
	if (result < 0)
		goto error_rpipe_get;
	result = -ENODEV;
	/* FIXME: segmentation broken -- kills DWA */
	FUNC4(&wusbhc->mutex);		/* get a WUSB dev */
	if (urb->dev == NULL) {
		FUNC5(&wusbhc->mutex);
		goto error_dev_gone;
	}
	wusb_dev = FUNC3(wusbhc, urb->dev);
	if (wusb_dev == NULL) {
		FUNC5(&wusbhc->mutex);
		goto error_dev_gone;
	}
	FUNC5(&wusbhc->mutex);

	FUNC8(&xfer->lock, flags);
	xfer->wusb_dev = wusb_dev;
	result = urb->status;
	if (urb->status != -EINPROGRESS)
		goto error_dequeued;

	result = FUNC1(xfer, urb);
	if (result < 0)
		goto error_xfer_setup;
	result = FUNC2(xfer);
	if (result < 0)
		goto error_xfer_submit;
	FUNC9(&xfer->lock, flags);
	return;

	/* this is basically wa_xfer_completion() broken up wa_xfer_giveback()
	 * does a wa_xfer_put() that will call wa_xfer_destroy() and clean
	 * upundo setup().
	 */
error_xfer_setup:
error_dequeued:
	FUNC9(&xfer->lock, flags);
	/* FIXME: segmentation broken, kills DWA */
	if (wusb_dev)
		FUNC12(wusb_dev);
error_dev_gone:
	FUNC7(xfer->ep->hcpriv);
error_rpipe_get:
	xfer->result = result;
	FUNC11(xfer);
	return;

error_xfer_submit:
	done = FUNC0(xfer);
	xfer->result = result;
	FUNC9(&xfer->lock, flags);
	if (done)
		FUNC10(xfer);
}