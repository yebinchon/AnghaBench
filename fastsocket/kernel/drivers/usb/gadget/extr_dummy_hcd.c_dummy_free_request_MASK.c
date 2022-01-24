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
struct usb_request {int dummy; } ;
struct usb_ep {scalar_t__ name; } ;
struct dummy_request {int /*<<< orphan*/  queue; } ;
struct dummy_ep {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ep0name ; 
 int /*<<< orphan*/  FUNC1 (struct dummy_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dummy_ep* FUNC3 (struct usb_ep*) ; 
 struct dummy_request* FUNC4 (struct usb_request*) ; 

__attribute__((used)) static void
FUNC5 (struct usb_ep *_ep, struct usb_request *_req)
{
	struct dummy_ep		*ep;
	struct dummy_request	*req;

	ep = FUNC3 (_ep);
	if (!ep || !_req || (!ep->desc && _ep->name != ep0name))
		return;

	req = FUNC4 (_req);
	FUNC0 (!FUNC2 (&req->queue));
	FUNC1 (req);
}