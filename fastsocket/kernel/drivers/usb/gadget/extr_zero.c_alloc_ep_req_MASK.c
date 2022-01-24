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
struct usb_request {int /*<<< orphan*/  buf; int /*<<< orphan*/  length; } ;
struct usb_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  buflen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_request* FUNC1 (struct usb_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ep*,struct usb_request*) ; 

struct usb_request *FUNC3(struct usb_ep *ep)
{
	struct usb_request	*req;

	req = FUNC1(ep, GFP_ATOMIC);
	if (req) {
		req->length = buflen;
		req->buf = FUNC0(buflen, GFP_ATOMIC);
		if (!req->buf) {
			FUNC2(ep, req);
			req = NULL;
		}
	}
	return req;
}