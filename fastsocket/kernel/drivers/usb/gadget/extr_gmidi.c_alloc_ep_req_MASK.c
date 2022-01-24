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
struct usb_request {unsigned int length; int /*<<< orphan*/  buf; } ;
struct usb_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 struct usb_request* FUNC1 (struct usb_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ep*,struct usb_request*) ; 

__attribute__((used)) static struct usb_request *FUNC3(struct usb_ep *ep, unsigned length)
{
	struct usb_request	*req;

	req = FUNC1(ep, GFP_ATOMIC);
	if (req) {
		req->length = length;
		req->buf = FUNC0(length, GFP_ATOMIC);
		if (!req->buf) {
			FUNC2(ep, req);
			req = NULL;
		}
	}
	return req;
}