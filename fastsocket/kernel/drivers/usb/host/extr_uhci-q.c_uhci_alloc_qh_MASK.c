#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_host_endpoint {TYPE_1__ desc; struct uhci_qh* hcpriv; } ;
struct usb_device {int /*<<< orphan*/  speed; } ;
struct uhci_qh {int type; int load; int /*<<< orphan*/  state; struct usb_device* udev; struct usb_host_endpoint* hep; int /*<<< orphan*/  dummy_td; int /*<<< orphan*/  node; int /*<<< orphan*/  queue; void* link; void* element; int /*<<< orphan*/  dma_handle; } ;
struct uhci_hcd {int /*<<< orphan*/  qh_pool; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QH_STATE_ACTIVE ; 
 int /*<<< orphan*/  QH_STATE_IDLE ; 
 void* UHCI_PTR_TERM ; 
 int USB_ENDPOINT_XFER_INT ; 
 int USB_ENDPOINT_XFER_ISOC ; 
 struct uhci_qh* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct uhci_qh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uhci_qh*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uhci_hcd*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static struct uhci_qh *FUNC9(struct uhci_hcd *uhci,
		struct usb_device *udev, struct usb_host_endpoint *hep)
{
	dma_addr_t dma_handle;
	struct uhci_qh *qh;

	qh = FUNC1(uhci->qh_pool, GFP_ATOMIC, &dma_handle);
	if (!qh)
		return NULL;

	FUNC4(qh, 0, sizeof(*qh));
	qh->dma_handle = dma_handle;

	qh->element = UHCI_PTR_TERM;
	qh->link = UHCI_PTR_TERM;

	FUNC0(&qh->queue);
	FUNC0(&qh->node);

	if (udev) {		/* Normal QH */
		qh->type = FUNC8(&hep->desc);
		if (qh->type != USB_ENDPOINT_XFER_ISOC) {
			qh->dummy_td = FUNC5(uhci);
			if (!qh->dummy_td) {
				FUNC2(uhci->qh_pool, qh, dma_handle);
				return NULL;
			}
		}
		qh->state = QH_STATE_IDLE;
		qh->hep = hep;
		qh->udev = udev;
		hep->hcpriv = qh;

		if (qh->type == USB_ENDPOINT_XFER_INT ||
				qh->type == USB_ENDPOINT_XFER_ISOC)
			qh->load = FUNC6(udev->speed,
					FUNC7(&hep->desc),
					qh->type == USB_ENDPOINT_XFER_ISOC,
					FUNC3(hep->desc.wMaxPacketSize))
				/ 1000 + 1;

	} else {		/* Skeleton QH */
		qh->state = QH_STATE_ACTIVE;
		qh->type = -1;
	}
	return qh;
}