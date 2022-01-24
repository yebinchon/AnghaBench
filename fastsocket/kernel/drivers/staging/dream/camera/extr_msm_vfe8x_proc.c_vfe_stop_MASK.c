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
typedef  int uint32_t ;
typedef  void* boolean ;
struct TYPE_2__ {scalar_t__ vfebase; void* vfeStatsPingPongReloadFlag; void* vfeStopAckPending; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXI_HALT ; 
 int /*<<< orphan*/  AXI_HALT_CLEAR ; 
 int AXI_STATUS_BUSY_MASK ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  VFE_CLEAR_ALL_IRQS ; 
 int /*<<< orphan*/  VFE_DISABLE_ALL_IRQS ; 
 int /*<<< orphan*/  VFE_IMASK_WHILE_STOPPING ; 
 scalar_t__ VFE_IRQ_CLEAR ; 
 int /*<<< orphan*/  VFE_RESET_UPON_STOP_CMD ; 
 int /*<<< orphan*/  VFE_TEST_GEN_STOP ; 
 TYPE_1__* ctrl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC8(void)
{
	boolean vfeAxiBusy;
	uint32_t vfeAxiStauts;

	/* for reset hw modules, and send msg when reset_irq comes.*/
	ctrl->vfeStopAckPending = TRUE;

	ctrl->vfeStatsPingPongReloadFlag = FALSE;
	FUNC1();

	/* disable all interrupts.  */
	FUNC5(VFE_DISABLE_ALL_IRQS);

	/* in either continuous or snapshot mode, stop command can be issued
	 * at any time.
	 */
	FUNC0();
	FUNC3(AXI_HALT);
	FUNC2(VFE_TEST_GEN_STOP);

	vfeAxiBusy = TRUE;

	while (vfeAxiBusy) {
		vfeAxiStauts = FUNC6();
		if ((vfeAxiStauts & AXI_STATUS_BUSY_MASK) != 0)
			vfeAxiBusy = FALSE;
	}

	FUNC3(AXI_HALT_CLEAR);

	/* clear all pending interrupts */
	FUNC7(VFE_CLEAR_ALL_IRQS, ctrl->vfebase + VFE_IRQ_CLEAR);

	/* enable reset_ack and async timer interrupt only while stopping
	 * the pipeline.
	 */
	FUNC5(VFE_IMASK_WHILE_STOPPING);

	FUNC4(VFE_RESET_UPON_STOP_CMD);
}