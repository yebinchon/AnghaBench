#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ qh_state; scalar_t__ xacterrs; TYPE_3__* hw; TYPE_2__ qh_next; int /*<<< orphan*/  clearing_tt; int /*<<< orphan*/  qh_dma; } ;
struct ehci_hcd {TYPE_1__* regs; struct ehci_qh* async; } ;
typedef  int /*<<< orphan*/  __hc32 ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct TYPE_7__ {int /*<<< orphan*/  hw_next; } ;
struct TYPE_5__ {int /*<<< orphan*/  command; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CMD_ASE ; 
 int CMD_RUN ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 scalar_t__ QH_STATE_IDLE ; 
 scalar_t__ QH_STATE_LINKED ; 
 int /*<<< orphan*/  STS_ASS ; 
 int /*<<< orphan*/  TIMER_ASYNC_OFF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ehci_hcd*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (struct ehci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ehci_hcd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC7 (struct ehci_hcd*,struct ehci_qh*) ; 
 int /*<<< orphan*/  FUNC8 (struct ehci_hcd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11 (struct ehci_hcd *ehci, struct ehci_qh *qh)
{
	__hc32		dma = FUNC0(ehci, qh->qh_dma);
	struct ehci_qh	*head;

	/* Don't link a QH if there's a Clear-TT-Buffer pending */
	if (FUNC9(qh->clearing_tt))
		return;

	FUNC1(qh->qh_state != QH_STATE_IDLE);

	/* (re)start the async schedule? */
	head = ehci->async;
	FUNC8 (ehci, TIMER_ASYNC_OFF);
	if (!head->qh_next.qh) {
		u32	cmd = FUNC2(ehci, &ehci->regs->command);

		if (!(cmd & CMD_ASE)) {
			/* in case a clear of CMD_ASE didn't take yet */
			(void)FUNC5(ehci, &ehci->regs->status,
					STS_ASS, 0, 150);
			cmd |= CMD_ASE | CMD_RUN;
			FUNC4(ehci, cmd, &ehci->regs->command);
			FUNC3(ehci)->state = HC_STATE_RUNNING;
			/* posted write need not be known to HC yet ... */
		}
	}

	/* clear halt and/or toggle; and maybe recover from silicon quirk */
	FUNC7(ehci, qh);

	/* splice right after start */
	qh->qh_next = head->qh_next;
	qh->hw->hw_next = head->hw->hw_next;
	FUNC10 ();

	head->qh_next.qh = qh;
	head->hw->hw_next = dma;

	FUNC6(qh);
	qh->xacterrs = 0;
	qh->qh_state = QH_STATE_LINKED;
	/* qtd completions reported later by interrupt */
}