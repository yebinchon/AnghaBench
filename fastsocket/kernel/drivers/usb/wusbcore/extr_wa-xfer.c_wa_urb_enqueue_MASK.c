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
struct wahc {int /*<<< orphan*/  xfer_work; int /*<<< orphan*/  xfer_list_lock; int /*<<< orphan*/  xfer_delayed_list; TYPE_1__* usb_iface; } ;
struct wa_xfer {int /*<<< orphan*/  list_node; struct usb_host_endpoint* ep; int /*<<< orphan*/  gfp; struct urb* urb; int /*<<< orphan*/  wa; } ;
struct usb_host_endpoint {int dummy; } ;
struct urb {int transfer_flags; int pipe; int /*<<< orphan*/  transfer_buffer_length; struct wa_xfer* hcpriv; int /*<<< orphan*/  status; int /*<<< orphan*/ * transfer_buffer; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int ENOENT ; 
 int ENOMEM ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,struct wa_xfer*,struct urb*,int,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,struct urb*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct wa_xfer*) ; 
 struct wa_xfer* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 
 int /*<<< orphan*/  FUNC12 (struct wahc*) ; 
 int /*<<< orphan*/  FUNC13 (struct wa_xfer*) ; 
 int /*<<< orphan*/  FUNC14 (struct wa_xfer*) ; 
 int /*<<< orphan*/  wusbd ; 

int FUNC15(struct wahc *wa, struct usb_host_endpoint *ep,
		   struct urb *urb, gfp_t gfp)
{
	int result;
	struct device *dev = &wa->usb_iface->dev;
	struct wa_xfer *xfer;
	unsigned long my_flags;
	unsigned cant_sleep = FUNC4() | FUNC3();

	if (urb->transfer_buffer == NULL
	    && !(urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)
	    && urb->transfer_buffer_length != 0) {
		FUNC1(dev, "BUG? urb %p: NULL xfer buffer & NODMA\n", urb);
		FUNC2();
	}

	result = -ENOMEM;
	xfer = FUNC6(sizeof(*xfer), gfp);
	if (xfer == NULL)
		goto error_kmalloc;

	result = -ENOENT;
	if (urb->status != -EINPROGRESS)	/* cancelled */
		goto error_dequeued;		/* before starting? */
	FUNC14(xfer);
	xfer->wa = FUNC12(wa);
	xfer->urb = urb;
	xfer->gfp = gfp;
	xfer->ep = ep;
	urb->hcpriv = xfer;

	FUNC0(dev, "xfer %p urb %p pipe 0x%02x [%d bytes] %s %s %s\n",
		xfer, urb, urb->pipe, urb->transfer_buffer_length,
		urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP ? "dma" : "nodma",
		urb->pipe & USB_DIR_IN ? "inbound" : "outbound",
		cant_sleep ? "deferred" : "inline");

	if (cant_sleep) {
		FUNC11(urb);
		FUNC9(&wa->xfer_list_lock, my_flags);
		FUNC7(&xfer->list_node, &wa->xfer_delayed_list);
		FUNC10(&wa->xfer_list_lock, my_flags);
		FUNC8(wusbd, &wa->xfer_work);
	} else {
		FUNC13(xfer);
	}
	return 0;

error_dequeued:
	FUNC5(xfer);
error_kmalloc:
	return result;
}