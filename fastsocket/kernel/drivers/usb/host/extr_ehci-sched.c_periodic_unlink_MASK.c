#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union ehci_shadow {void* ptr; } ;
struct ehci_hcd {scalar_t__* periodic; TYPE_1__* dummy; int /*<<< orphan*/  use_dummy_qh; union ehci_shadow* pshadow; } ;
typedef  scalar_t__ __hc32 ;
struct TYPE_2__ {scalar_t__ qh_dma; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*,scalar_t__) ; 
 union ehci_shadow* FUNC2 (struct ehci_hcd*,union ehci_shadow*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (struct ehci_hcd*,union ehci_shadow*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (struct ehci_hcd *ehci, unsigned frame, void *ptr)
{
	union ehci_shadow	*prev_p = &ehci->pshadow[frame];
	__hc32			*hw_p = &ehci->periodic[frame];
	union ehci_shadow	here = *prev_p;

	/* find predecessor of "ptr"; hw and shadow lists are in sync */
	while (here.ptr && here.ptr != ptr) {
		prev_p = FUNC2(ehci, prev_p,
				FUNC1(ehci, *hw_p));
		hw_p = FUNC3(ehci, &here,
				FUNC1(ehci, *hw_p));
		here = *prev_p;
	}
	/* an interrupt entry (at list end) could have been shared */
	if (!here.ptr)
		return;

	/* update shadow and hardware lists ... the old "next" pointers
	 * from ptr may still be in use, the caller updates them.
	 */
	*prev_p = *FUNC2(ehci, &here,
			FUNC1(ehci, *hw_p));

	if (!ehci->use_dummy_qh ||
	    *FUNC3(ehci, &here, FUNC1(ehci, *hw_p))
			!= FUNC0(ehci))
		*hw_p = *FUNC3(ehci, &here,
				FUNC1(ehci, *hw_p));
	else
		*hw_p = ehci->dummy->qh_dma;
}