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
struct xhci_segment {struct xhci_segment* next; } ;
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,struct xhci_segment*) ; 

__attribute__((used)) static void FUNC1(struct xhci_hcd *xhci,
				struct xhci_segment *first)
{
	struct xhci_segment *seg;

	seg = first->next;
	while (seg != first) {
		struct xhci_segment *next = seg->next;
		FUNC0(xhci, seg);
		seg = next;
	}
	FUNC0(xhci, first);
}