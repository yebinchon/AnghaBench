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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_request {scalar_t__ length; int /*<<< orphan*/  complete; } ;
struct usb_ep {int dummy; } ;
struct gmidi_in_port {scalar_t__ active; } ;
struct gmidi_device {int /*<<< orphan*/  in_substream; struct gmidi_in_port in_port; struct usb_ep* in_ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gmidi_device*,char*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct usb_request* FUNC1 (struct usb_ep*,scalar_t__) ; 
 scalar_t__ buflen ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ep*,struct usb_request*) ; 
 int /*<<< orphan*/  gmidi_complete ; 
 int /*<<< orphan*/  FUNC3 (struct usb_request*,struct gmidi_in_port*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ep*,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gmidi_device *dev, struct usb_request *req)
{
	struct usb_ep *ep = dev->in_ep;
	struct gmidi_in_port *port = &dev->in_port;

	if (!ep) {
		return;
	}
	if (!req) {
		req = FUNC1(ep, buflen);
	}
	if (!req) {
		FUNC0(dev, "gmidi_transmit: alloc_ep_request failed\n");
		return;
	}
	req->length = 0;
	req->complete = gmidi_complete;

	if (port->active) {
		while (req->length + 3 < buflen) {
			uint8_t b;
			if (FUNC4(dev->in_substream, &b, 1)
				!= 1)
			{
				port->active = 0;
				break;
			}
			FUNC3(req, port, b);
		}
	}
	if (req->length > 0) {
		FUNC5(ep, req, GFP_ATOMIC);
	} else {
		FUNC2(ep, req);
	}
}