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
struct usba_request {int dummy; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct usb_ep*,struct usb_request*) ; 
 int /*<<< orphan*/  DBG_GADGET ; 
 int /*<<< orphan*/  FUNC1 (struct usba_request*) ; 
 struct usba_request* FUNC2 (struct usb_request*) ; 

__attribute__((used)) static void
FUNC3(struct usb_ep *_ep, struct usb_request *_req)
{
	struct usba_request *req = FUNC2(_req);

	FUNC0(DBG_GADGET, "ep_free_request: %p, %p\n", _ep, _req);

	FUNC1(req);
}