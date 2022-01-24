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
struct vfe_irq_thread_msg {int vfeIrqStatus; } ;
struct isr_queue_cmd {int /*<<< orphan*/  list; int /*<<< orphan*/  vfePmData; int /*<<< orphan*/  vfeCamifStatusLocal; int /*<<< orphan*/  vfeBpcFrameInfo; int /*<<< orphan*/  vfeAsfFrameInfo; int /*<<< orphan*/  vfeInterruptStatus; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int vfeImaskPacked; scalar_t__ vfebase; int /*<<< orphan*/  tasklet_lock; int /*<<< orphan*/  tasklet_q; int /*<<< orphan*/  ack_lock; scalar_t__ vfeStopAckPending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int VFE_IMASK_ERROR_ONLY ; 
 int VFE_IMASK_WHILE_STOPPING ; 
 scalar_t__ VFE_IRQ_CLEAR ; 
 TYPE_1__* ctrl ; 
 struct isr_queue_cmd* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vfe_irq_thread_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct vfe_irq_thread_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct vfe_irq_thread_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct vfe_irq_thread_msg*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct vfe_irq_thread_msg*) ; 
 int /*<<< orphan*/  vfe_tasklet ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq_num, void *data)
{
	unsigned long flags;
	uint32_t irqStatusLocal;
	struct vfe_irq_thread_msg irq;
	struct isr_queue_cmd *qcmd;

	FUNC0("vfe_parse_irq\n");

	FUNC11(&irq);

	if (irq.vfeIrqStatus == 0) {
		FUNC0("vfe_parse_irq: irq.vfeIrqStatus is 0\n");
		return IRQ_HANDLED;
	}

	qcmd = FUNC1(sizeof(struct isr_queue_cmd),
		GFP_ATOMIC);
	if (!qcmd) {
		FUNC0("vfe_parse_irq: qcmd malloc failed!\n");
		return IRQ_HANDLED;
	}

	FUNC3(&ctrl->ack_lock, flags);

	if (ctrl->vfeStopAckPending)
		irqStatusLocal =
			(VFE_IMASK_WHILE_STOPPING & irq.vfeIrqStatus);
	else
		irqStatusLocal =
			((ctrl->vfeImaskPacked | VFE_IMASK_ERROR_ONLY) &
				irq.vfeIrqStatus);

	FUNC4(&ctrl->ack_lock, flags);

	/* first parse the interrupt status to local data structures. */
	qcmd->vfeInterruptStatus = FUNC10(irqStatusLocal);
	qcmd->vfeAsfFrameInfo = FUNC6(&irq);
	qcmd->vfeBpcFrameInfo = FUNC8(&irq);
	qcmd->vfeCamifStatusLocal = FUNC7(&irq);
	qcmd->vfePmData = FUNC9(&irq);

	FUNC3(&ctrl->tasklet_lock, flags);
	FUNC2(&qcmd->list, &ctrl->tasklet_q);
	FUNC4(&ctrl->tasklet_lock, flags);
	FUNC5(&vfe_tasklet);

	/* clear the pending interrupt of the same kind.*/
	FUNC12(irq.vfeIrqStatus, ctrl->vfebase + VFE_IRQ_CLEAR);

	return IRQ_HANDLED;
}