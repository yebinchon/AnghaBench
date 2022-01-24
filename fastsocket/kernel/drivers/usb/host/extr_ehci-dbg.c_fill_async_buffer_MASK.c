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
struct usb_hcd {int dummy; } ;
struct TYPE_6__ {struct ehci_qh* qh; } ;
struct ehci_qh {struct ehci_qh* reclaim; TYPE_3__ qh_next; } ;
struct ehci_hcd {int /*<<< orphan*/  lock; struct ehci_qh* reclaim; TYPE_2__* async; } ;
struct debug_buffer {char* output_buf; unsigned int alloc_size; int /*<<< orphan*/  bus; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {struct ehci_qh* qh; } ;
struct TYPE_5__ {TYPE_1__ qh_next; } ;

/* Variables and functions */
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ehci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,struct ehci_qh*,char**,unsigned int*) ; 
 unsigned int FUNC3 (char*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct debug_buffer *buf)
{
	struct usb_hcd		*hcd;
	struct ehci_hcd		*ehci;
	unsigned long		flags;
	unsigned		temp, size;
	char			*next;
	struct ehci_qh		*qh;

	hcd = FUNC0(buf->bus);
	ehci = FUNC1 (hcd);
	next = buf->output_buf;
	size = buf->alloc_size;

	*next = 0;

	/* dumps a snapshot of the async schedule.
	 * usually empty except for long-term bulk reads, or head.
	 * one QH per line, and TDs we know about
	 */
	FUNC4 (&ehci->lock, flags);
	for (qh = ehci->async->qh_next.qh; size > 0 && qh; qh = qh->qh_next.qh)
		FUNC2 (ehci, qh, &next, &size);
	if (ehci->reclaim && size > 0) {
		temp = FUNC3 (next, size, "\nreclaim =\n");
		size -= temp;
		next += temp;

		for (qh = ehci->reclaim; size > 0 && qh; qh = qh->reclaim)
			FUNC2 (ehci, qh, &next, &size);
	}
	FUNC5 (&ehci->lock, flags);

	return FUNC6(buf->output_buf);
}