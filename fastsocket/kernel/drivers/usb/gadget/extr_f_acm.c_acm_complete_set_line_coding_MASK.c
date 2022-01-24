#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_request {int status; int actual; struct usb_cdc_line_coding* buf; } ;
struct usb_ep {struct f_acm* driver_data; } ;
struct usb_composite_dev {int dummy; } ;
struct usb_cdc_line_coding {int dummy; } ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_6__ {TYPE_2__ func; } ;
struct f_acm {struct usb_cdc_line_coding port_line_coding; int /*<<< orphan*/  port_num; TYPE_3__ port; } ;
struct TYPE_4__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ep*) ; 

__attribute__((used)) static void FUNC2(struct usb_ep *ep,
		struct usb_request *req)
{
	struct f_acm	*acm = ep->driver_data;
	struct usb_composite_dev *cdev = acm->port.func.config->cdev;

	if (req->status != 0) {
		FUNC0(cdev, "acm ttyGS%d completion, err %d\n",
				acm->port_num, req->status);
		return;
	}

	/* normal completion */
	if (req->actual != sizeof(acm->port_line_coding)) {
		FUNC0(cdev, "acm ttyGS%d short resp, len %d\n",
				acm->port_num, req->actual);
		FUNC1(ep);
	} else {
		struct usb_cdc_line_coding	*value = req->buf;

		/* REVISIT:  we currently just remember this data.
		 * If we change that, (a) validate it first, then
		 * (b) update whatever hardware needs updating,
		 * (c) worry about locking.  This is information on
		 * the order of 9600-8-N-1 ... most of which means
		 * nothing unless we control a real RS232 line.
		 */
		acm->port_line_coding = *value;
	}
}