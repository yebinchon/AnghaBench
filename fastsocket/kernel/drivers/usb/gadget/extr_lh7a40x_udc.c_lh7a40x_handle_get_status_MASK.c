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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct usb_ctrlrequest {int bRequestType; int wIndex; int wLength; } ;
struct lh7a40x_udc {struct lh7a40x_ep* ep; } ;
struct lh7a40x_ep {int ep_type; int /*<<< orphan*/  csr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EOPNOTSUPP ; 
 int EP0_CLR_OUT ; 
 int EP0_DATA_END ; 
 int EP0_IN_PKT_RDY ; 
 int EP0_SEND_STALL ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  USB_EP0_CSR ; 
 int USB_IN_CSR1_SEND_STALL ; 
 int USB_OUT_CSR1_SEND_STALL ; 
 int USB_RECIP_DEVICE ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_RECIP_MASK ; 
#define  ep_bulk_in 131 
#define  ep_bulk_out 130 
#define  ep_control 129 
 scalar_t__ FUNC1 (struct lh7a40x_ep*) ; 
#define  ep_interrupt 128 
 int FUNC2 (struct lh7a40x_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct lh7a40x_ep*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct lh7a40x_udc *dev,
				     struct usb_ctrlrequest *ctrl)
{
	struct lh7a40x_ep *ep0 = &dev->ep[0];
	struct lh7a40x_ep *qep;
	int reqtype = (ctrl->bRequestType & USB_RECIP_MASK);
	u16 val = 0;

	if (reqtype == USB_RECIP_INTERFACE) {
		/* This is not supported.
		 * And according to the USB spec, this one does nothing..
		 * Just return 0
		 */
		FUNC0("GET_STATUS: USB_RECIP_INTERFACE\n");
	} else if (reqtype == USB_RECIP_DEVICE) {
		FUNC0("GET_STATUS: USB_RECIP_DEVICE\n");
		val |= (1 << 0);	/* Self powered */
		/*val |= (1<<1); *//* Remote wakeup */
	} else if (reqtype == USB_RECIP_ENDPOINT) {
		int ep_num = (ctrl->wIndex & ~USB_DIR_IN);

		FUNC0
		    ("GET_STATUS: USB_RECIP_ENDPOINT (%d), ctrl->wLength = %d\n",
		     ep_num, ctrl->wLength);

		if (ctrl->wLength > 2 || ep_num > 3)
			return -EOPNOTSUPP;

		qep = &dev->ep[ep_num];
		if (FUNC2(qep) != ((ctrl->wIndex & USB_DIR_IN) ? 1 : 0)
		    && FUNC1(qep) != 0) {
			return -EOPNOTSUPP;
		}

		FUNC6(FUNC1(qep));

		/* Return status on next IN token */
		switch (qep->ep_type) {
		case ep_control:
			val =
			    (FUNC4(qep->csr1) & EP0_SEND_STALL) ==
			    EP0_SEND_STALL;
			break;
		case ep_bulk_in:
		case ep_interrupt:
			val =
			    (FUNC4(qep->csr1) & USB_IN_CSR1_SEND_STALL) ==
			    USB_IN_CSR1_SEND_STALL;
			break;
		case ep_bulk_out:
			val =
			    (FUNC4(qep->csr1) & USB_OUT_CSR1_SEND_STALL) ==
			    USB_OUT_CSR1_SEND_STALL;
			break;
		}

		/* Back to EP0 index */
		FUNC6(0);

		FUNC0("GET_STATUS, ep: %d (%x), val = %d\n", ep_num,
			    ctrl->wIndex, val);
	} else {
		FUNC0("Unknown REQ TYPE: %d\n", reqtype);
		return -EOPNOTSUPP;
	}

	/* Clear "out packet ready" */
	FUNC5((EP0_CLR_OUT), USB_EP0_CSR);
	/* Put status to FIFO */
	FUNC3(ep0, (u8 *) & val, sizeof(val));
	/* Issue "In packet ready" */
	FUNC5((EP0_IN_PKT_RDY | EP0_DATA_END), USB_EP0_CSR);

	return 0;
}