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
typedef  int u32 ;
struct oxu_hcd {TYPE_1__* regs; struct ehci_qh* async; } ;
struct TYPE_5__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ qh_state; int /*<<< orphan*/  hw_next; TYPE_2__ qh_next; int /*<<< orphan*/  qh_dma; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  command; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CMD_ASE ; 
 int CMD_RUN ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ QH_STATE_IDLE ; 
 scalar_t__ QH_STATE_LINKED ; 
 int /*<<< orphan*/  STS_ASS ; 
 int /*<<< orphan*/  TIMER_ASYNC_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct oxu_hcd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC2 (struct oxu_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct oxu_hcd*,struct ehci_qh*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct oxu_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct oxu_hcd *oxu, struct ehci_qh *qh)
{
	__le32 dma = FUNC0(qh->qh_dma);
	struct ehci_qh *head;

	/* (re)start the async schedule? */
	head = oxu->async;
	FUNC5(oxu, TIMER_ASYNC_OFF);
	if (!head->qh_next.qh) {
		u32	cmd = FUNC4(&oxu->regs->command);

		if (!(cmd & CMD_ASE)) {
			/* in case a clear of CMD_ASE didn't take yet */
			(void)FUNC1(oxu, &oxu->regs->status,
					STS_ASS, 0, 150);
			cmd |= CMD_ASE | CMD_RUN;
			FUNC7(cmd, &oxu->regs->command);
			FUNC2(oxu)->state = HC_STATE_RUNNING;
			/* posted write need not be known to HC yet ... */
		}
	}

	/* clear halt and/or toggle; and maybe recover from silicon quirk */
	if (qh->qh_state == QH_STATE_IDLE)
		FUNC3(oxu, qh);

	/* splice right after start */
	qh->qh_next = head->qh_next;
	qh->hw_next = head->hw_next;
	FUNC6();

	head->qh_next.qh = qh;
	head->hw_next = dma;

	qh->qh_state = QH_STATE_LINKED;
	/* qtd completions reported later by interrupt */
}