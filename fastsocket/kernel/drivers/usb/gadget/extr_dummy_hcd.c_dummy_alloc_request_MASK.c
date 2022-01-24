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
struct usb_ep {int dummy; } ;
struct dummy_request {struct usb_request req; int /*<<< orphan*/  queue; } ;
struct dummy_ep {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dummy_request* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct dummy_ep* FUNC2 (struct usb_ep*) ; 

__attribute__((used)) static struct usb_request *
FUNC3 (struct usb_ep *_ep, gfp_t mem_flags)
{
	struct dummy_ep		*ep;
	struct dummy_request	*req;

	if (!_ep)
		return NULL;
	ep = FUNC2 (_ep);

	req = FUNC1(sizeof(*req), mem_flags);
	if (!req)
		return NULL;
	FUNC0 (&req->queue);
	return &req->req;
}