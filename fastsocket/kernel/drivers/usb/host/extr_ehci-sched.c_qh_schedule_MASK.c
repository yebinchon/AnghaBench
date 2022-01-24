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
struct ehci_qh_hw {int /*<<< orphan*/  hw_info2; int /*<<< orphan*/  hw_next; } ;
struct ehci_qh {unsigned int start; unsigned int period; struct ehci_qh_hw* hw; } ;
struct ehci_hcd {unsigned int random_frame; } ;
typedef  int /*<<< orphan*/  __hc32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*) ; 
 int ENOSPC ; 
 int QH_CMASK ; 
 int QH_SMASK ; 
 int FUNC1 (struct ehci_hcd*,unsigned int,unsigned int,struct ehci_qh*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ehci_hcd*,char*,struct ehci_qh*) ; 
 unsigned int FUNC4 (int) ; 
 int FUNC5 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC7 (struct ehci_hcd*,struct ehci_qh*) ; 

__attribute__((used)) static int FUNC8(struct ehci_hcd *ehci, struct ehci_qh *qh)
{
	int		status;
	unsigned	uframe;
	__hc32		c_mask;
	unsigned	frame;		/* 0..(qh->period - 1), or NO_FRAME */
	struct ehci_qh_hw	*hw = qh->hw;

	FUNC7(ehci, qh);
	hw->hw_next = FUNC0(ehci);
	frame = qh->start;

	/* reuse the previous schedule slots, if we can */
	if (frame < qh->period) {
		uframe = FUNC4(FUNC5(ehci, &hw->hw_info2) & QH_SMASK);
		status = FUNC1 (ehci, frame, --uframe,
				qh, &c_mask);
	} else {
		uframe = 0;
		c_mask = 0;
		status = -ENOSPC;
	}

	/* else scan the schedule to find a group of slots such that all
	 * uframes have enough periodic bandwidth available.
	 */
	if (status) {
		/* "normal" case, uframing flexible except with splits */
		if (qh->period) {
			int		i;

			for (i = qh->period; status && i > 0; --i) {
				frame = ++ehci->random_frame % qh->period;
				for (uframe = 0; uframe < 8; uframe++) {
					status = FUNC1 (ehci,
							frame, uframe, qh,
							&c_mask);
					if (status == 0)
						break;
				}
			}

		/* qh->period == 0 means every uframe */
		} else {
			frame = 0;
			status = FUNC1 (ehci, 0, 0, qh, &c_mask);
		}
		if (status)
			goto done;
		qh->start = frame;

		/* reset S-frame and (maybe) C-frame masks */
		hw->hw_info2 &= FUNC2(ehci, ~(QH_CMASK | QH_SMASK));
		hw->hw_info2 |= qh->period
			? FUNC2(ehci, 1 << uframe)
			: FUNC2(ehci, QH_SMASK);
		hw->hw_info2 |= c_mask;
	} else
		FUNC3 (ehci, "reused qh %p schedule\n", qh);

	/* stuff into the periodic schedule */
	status = FUNC6 (ehci, qh);
done:
	return status;
}