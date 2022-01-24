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
union ehci_shadow {struct ehci_itd* itd; scalar_t__ ptr; } ;
struct ehci_itd {unsigned int frame; int itd_dma; scalar_t__ hw_next; union ehci_shadow itd_next; } ;
struct ehci_hcd {scalar_t__* periodic; union ehci_shadow* pshadow; } ;
typedef  scalar_t__ __hc32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ehci_hcd*,scalar_t__) ; 
 int Q_TYPE_ITD ; 
 int Q_TYPE_QH ; 
 scalar_t__ FUNC1 (struct ehci_hcd*,int) ; 
 union ehci_shadow* FUNC2 (struct ehci_hcd*,union ehci_shadow*,scalar_t__) ; 
 scalar_t__* FUNC3 (struct ehci_hcd*,union ehci_shadow*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void
FUNC5 (struct ehci_hcd *ehci, unsigned frame, struct ehci_itd *itd)
{
	union ehci_shadow	*prev = &ehci->pshadow[frame];
	__hc32			*hw_p = &ehci->periodic[frame];
	union ehci_shadow	here = *prev;
	__hc32			type = 0;

	/* skip any iso nodes which might belong to previous microframes */
	while (here.ptr) {
		type = FUNC0(ehci, *hw_p);
		if (type == FUNC1(ehci, Q_TYPE_QH))
			break;
		prev = FUNC2(ehci, prev, type);
		hw_p = FUNC3(ehci, &here, type);
		here = *prev;
	}

	itd->itd_next = here;
	itd->hw_next = *hw_p;
	prev->itd = itd;
	itd->frame = frame;
	FUNC4 ();
	*hw_p = FUNC1(ehci, itd->itd_dma | Q_TYPE_ITD);
}