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
struct usb_request {void (* complete ) (struct usb_ep*,struct usb_request*) ;int /*<<< orphan*/  list; } ;
struct usb_ep {int /*<<< orphan*/  maxpacket; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int QUEUE_SIZE ; 
 struct usb_request* FUNC0 (struct usb_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC2 (struct list_head*) ; 

__attribute__((used)) static int FUNC3(struct usb_ep *ep, struct list_head *head,
		void (*fn)(struct usb_ep *, struct usb_request *))
{
	int			i;
	struct usb_request	*req;

	/* Pre-allocate up to QUEUE_SIZE transfers, but if we can't
	 * do quite that many this time, don't fail ... we just won't
	 * be as speedy as we might otherwise be.
	 */
	for (i = 0; i < QUEUE_SIZE; i++) {
		req = FUNC0(ep, ep->maxpacket, GFP_ATOMIC);
		if (!req)
			return FUNC2(head) ? -ENOMEM : 0;
		req->complete = fn;
		FUNC1(&req->list, head);
	}
	return 0;
}