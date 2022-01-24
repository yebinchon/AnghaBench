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
struct xhci_segment {int /*<<< orphan*/ * trbs; int /*<<< orphan*/  dma; } ;
struct xhci_hcd {int /*<<< orphan*/  segment_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_segment*) ; 

__attribute__((used)) static void FUNC2(struct xhci_hcd *xhci, struct xhci_segment *seg)
{
	if (seg->trbs) {
		FUNC0(xhci->segment_pool, seg->trbs, seg->dma);
		seg->trbs = NULL;
	}
	FUNC1(seg);
}