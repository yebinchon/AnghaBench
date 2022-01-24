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
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; } ;
struct us_data {scalar_t__ protocol; int /*<<< orphan*/  ep_bInterval; int /*<<< orphan*/  pusb_dev; int /*<<< orphan*/  recv_intr_pipe; int /*<<< orphan*/  recv_bulk_pipe; int /*<<< orphan*/  send_bulk_pipe; int /*<<< orphan*/  recv_ctrl_pipe; int /*<<< orphan*/  send_ctrl_pipe; TYPE_1__* pusb_intf; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_4__ {struct usb_host_interface* cur_altsetting; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ US_PR_CBI ; 
 scalar_t__ FUNC1 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC2 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC4 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct us_data *us)
{
	struct usb_host_interface *altsetting =
		us->pusb_intf->cur_altsetting;
	int i;
	struct usb_endpoint_descriptor *ep;
	struct usb_endpoint_descriptor *ep_in = NULL;
	struct usb_endpoint_descriptor *ep_out = NULL;
	struct usb_endpoint_descriptor *ep_int = NULL;

	/*
	 * Find the first endpoint of each type we need.
	 * We are expecting a minimum of 2 endpoints - in and out (bulk).
	 * An optional interrupt-in is OK (necessary for CBI protocol).
	 * We will ignore any others.
	 */
	for (i = 0; i < altsetting->desc.bNumEndpoints; i++) {
		ep = &altsetting->endpoint[i].desc;

		if (FUNC4(ep)) {
			if (FUNC1(ep)) {
				if (!ep_in)
					ep_in = ep;
			} else {
				if (!ep_out)
					ep_out = ep;
			}
		}

		else if (FUNC2(ep)) {
			if (!ep_int)
				ep_int = ep;
		}
	}

	if (!ep_in || !ep_out || (us->protocol == US_PR_CBI && !ep_int)) {
		FUNC0("Endpoint sanity check failed! Rejecting dev.\n");
		return -EIO;
	}

	/* Calculate and store the pipe values */
	us->send_ctrl_pipe = FUNC9(us->pusb_dev, 0);
	us->recv_ctrl_pipe = FUNC6(us->pusb_dev, 0);
	us->send_bulk_pipe = FUNC8(us->pusb_dev,
		FUNC3(ep_out));
	us->recv_bulk_pipe = FUNC5(us->pusb_dev, 
		FUNC3(ep_in));
	if (ep_int) {
		us->recv_intr_pipe = FUNC7(us->pusb_dev,
			FUNC3(ep_int));
		us->ep_bInterval = ep_int->bInterval;
	}
	return 0;
}