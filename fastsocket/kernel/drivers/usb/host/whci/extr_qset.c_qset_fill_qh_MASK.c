#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* cur_window; void* info3; void* info2; void* info1; } ;
struct whc_qset {int max_seq; int max_burst; TYPE_4__ qh; int /*<<< orphan*/  max_packet; TYPE_3__* ep; } ;
struct usb_wireless_ep_comp_descriptor {int bMaxSequence; int bMaxBurst; } ;
struct usb_device {int /*<<< orphan*/  portnum; } ;
struct urb {int /*<<< orphan*/  pipe; TYPE_2__* ep; struct usb_device* dev; } ;
struct TYPE_7__ {scalar_t__ extra; } ;
struct TYPE_5__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int QH_INFO1_DIR_IN ; 
 int QH_INFO1_DIR_OUT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int QH_INFO3_TX_RATE_53_3 ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct whc_qset *qset, struct urb *urb)
{
	struct usb_device *usb_dev = urb->dev;
	struct usb_wireless_ep_comp_descriptor *epcd;
	bool is_out;

	is_out = FUNC13(urb->pipe);

	qset->max_packet = FUNC10(urb->ep->desc.wMaxPacketSize);

	epcd = (struct usb_wireless_ep_comp_descriptor *)qset->ep->extra;
	if (epcd) {
		qset->max_seq = epcd->bMaxSequence;
		qset->max_burst = epcd->bMaxBurst;
	} else {
		qset->max_seq = 2;
		qset->max_burst = 1;
	}

	qset->qh.info1 = FUNC9(
		FUNC1(FUNC12(urb->pipe))
		| (is_out ? QH_INFO1_DIR_OUT : QH_INFO1_DIR_IN)
		| FUNC11(urb->pipe)
		| FUNC0(FUNC14(usb_dev->portnum))
		| FUNC2(qset->max_packet)
		);
	qset->qh.info2 = FUNC9(
		FUNC3(qset->max_burst)
		| FUNC4(0)
		| FUNC5(3)
		| FUNC6(3)
		| FUNC7(qset->max_seq - 1)
		);
	/* FIXME: where can we obtain these Tx parameters from?  Why
	 * doesn't the chip know what Tx power to use? It knows the Rx
	 * strength and can presumably guess the Tx power required
	 * from that? */
	qset->qh.info3 = FUNC9(
		QH_INFO3_TX_RATE_53_3
		| FUNC8(0) /* 0 == max power */
		);

	qset->qh.cur_window = FUNC9((1 << qset->max_burst) - 1);
}