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
typedef  union xhci_trb {int dummy; } xhci_trb ;
struct xhci_segment {union xhci_trb* trbs; struct xhci_segment* next; } ;
struct xhci_ring {int dummy; } ;
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xhci_hcd*,struct xhci_ring*,struct xhci_segment*,union xhci_trb*) ; 

__attribute__((used)) static void FUNC1(struct xhci_hcd *xhci,
		struct xhci_ring *ring,
		struct xhci_segment **seg,
		union xhci_trb **trb)
{
	if (FUNC0(xhci, ring, *seg, *trb)) {
		*seg = (*seg)->next;
		*trb = ((*seg)->trbs);
	} else {
		(*trb)++;
	}
}