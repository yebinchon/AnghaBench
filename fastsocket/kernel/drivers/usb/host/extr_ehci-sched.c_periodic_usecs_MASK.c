#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
union ehci_shadow {TYPE_6__* sitd; TYPE_4__* itd; TYPE_2__* fstn; TYPE_1__* qh; scalar_t__ ptr; } ;
struct ehci_qh_hw {int hw_info2; int /*<<< orphan*/  hw_next; } ;
struct ehci_hcd {union ehci_shadow* pshadow; int /*<<< orphan*/ * periodic; } ;
typedef  int /*<<< orphan*/  __hc32 ;
struct TYPE_12__ {int hw_uframe; int hw_fullspeed_ep; union ehci_shadow sitd_next; int /*<<< orphan*/  hw_next; TYPE_5__* stream; } ;
struct TYPE_11__ {unsigned int usecs; unsigned int c_usecs; } ;
struct TYPE_10__ {union ehci_shadow itd_next; int /*<<< orphan*/  hw_next; TYPE_3__* stream; int /*<<< orphan*/ * hw_transaction; } ;
struct TYPE_9__ {unsigned int usecs; } ;
struct TYPE_8__ {union ehci_shadow fstn_next; int /*<<< orphan*/  hw_next; int /*<<< orphan*/  hw_prev; } ;
struct TYPE_7__ {unsigned int usecs; unsigned int c_usecs; union ehci_shadow qh_next; struct ehci_qh_hw* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
#define  Q_TYPE_ITD 130 
#define  Q_TYPE_QH 129 
#define  Q_TYPE_SITD 128 
 int FUNC3 (struct ehci_hcd*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*,char*,unsigned int,unsigned int) ; 
 int FUNC6 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned short
FUNC7 (struct ehci_hcd *ehci, unsigned frame, unsigned uframe)
{
	__hc32			*hw_p = &ehci->periodic [frame];
	union ehci_shadow	*q = &ehci->pshadow [frame];
	unsigned		usecs = 0;
	struct ehci_qh_hw	*hw;

	while (q->ptr) {
		switch (FUNC6(ehci, FUNC2(ehci, *hw_p))) {
		case Q_TYPE_QH:
			hw = q->qh->hw;
			/* is it in the S-mask? */
			if (hw->hw_info2 & FUNC3(ehci, 1 << uframe))
				usecs += q->qh->usecs;
			/* ... or C-mask? */
			if (hw->hw_info2 & FUNC3(ehci,
					1 << (8 + uframe)))
				usecs += q->qh->c_usecs;
			hw_p = &hw->hw_next;
			q = &q->qh->qh_next;
			break;
		// case Q_TYPE_FSTN:
		default:
			/* for "save place" FSTNs, count the relevant INTR
			 * bandwidth from the previous frame
			 */
			if (q->fstn->hw_prev != FUNC0(ehci)) {
				FUNC4 (ehci, "ignoring FSTN cost ...\n");
			}
			hw_p = &q->fstn->hw_next;
			q = &q->fstn->fstn_next;
			break;
		case Q_TYPE_ITD:
			if (q->itd->hw_transaction[uframe])
				usecs += q->itd->stream->usecs;
			hw_p = &q->itd->hw_next;
			q = &q->itd->itd_next;
			break;
		case Q_TYPE_SITD:
			/* is it in the S-mask?  (count SPLIT, DATA) */
			if (q->sitd->hw_uframe & FUNC3(ehci,
					1 << uframe)) {
				if (q->sitd->hw_fullspeed_ep &
						FUNC3(ehci, 1<<31))
					usecs += q->sitd->stream->usecs;
				else	/* worst case for OUT start-split */
					usecs += FUNC1 (188);
			}

			/* ... C-mask?  (count CSPLIT, DATA) */
			if (q->sitd->hw_uframe &
					FUNC3(ehci, 1 << (8 + uframe))) {
				/* worst case for IN complete-split */
				usecs += q->sitd->stream->c_usecs;
			}

			hw_p = &q->sitd->hw_next;
			q = &q->sitd->sitd_next;
			break;
		}
	}
#ifdef	DEBUG
	if (usecs > 100)
		ehci_err (ehci, "uframe %d sched overrun: %d usecs\n",
			frame * 8 + uframe, usecs);
#endif
	return usecs;
}