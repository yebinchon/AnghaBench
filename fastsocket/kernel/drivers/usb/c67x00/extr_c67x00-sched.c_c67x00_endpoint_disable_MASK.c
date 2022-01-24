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
struct usb_host_endpoint {int /*<<< orphan*/  urb_list; } ;
struct usb_hcd {int dummy; } ;
struct c67x00_hcd {int /*<<< orphan*/  lock; int /*<<< orphan*/  endpoint_disable; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct usb_host_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct c67x00_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct c67x00_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct c67x00_hcd* FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

void FUNC10(struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
	struct c67x00_hcd *c67x00 = FUNC5(hcd);
	unsigned long flags;

	if (!FUNC6(&ep->urb_list))
		FUNC4(FUNC2(c67x00), "error: urb list not empty\n");

	FUNC7(&c67x00->lock, flags);

	/* loop waiting for all transfers in the endpoint queue to complete */
	while (FUNC1(ep)) {
		/* Drop the lock so we can sleep waiting for the hardware */
		FUNC8(&c67x00->lock, flags);

		/* it could happen that we reinitialize this completion, while
		 * somebody was waiting for that completion.  The timeout and
		 * while loop handle such cases, but this might be improved */
		FUNC0(c67x00->endpoint_disable);
		FUNC3(c67x00);
		FUNC9(&c67x00->endpoint_disable, 1 * HZ);

		FUNC7(&c67x00->lock, flags);
	}

	FUNC8(&c67x00->lock, flags);
}