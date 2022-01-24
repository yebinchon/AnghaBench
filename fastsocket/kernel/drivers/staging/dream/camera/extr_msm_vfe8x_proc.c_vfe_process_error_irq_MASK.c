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
struct vfe_interrupt_status {scalar_t__ violationIrq; scalar_t__ camifOverflowIrq; scalar_t__ camifErrorIrq; scalar_t__ busOverflowIrq; scalar_t__ axiErrorIrq; scalar_t__ awbOverflowIrq; scalar_t__ afOverflowIrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFE_MSG_ID_AF_OVERFLOW ; 
 int /*<<< orphan*/  VFE_MSG_ID_AWB_OVERFLOW ; 
 int /*<<< orphan*/  VFE_MSG_ID_AXI_ERROR ; 
 int /*<<< orphan*/  VFE_MSG_ID_CAMIF_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
	struct vfe_interrupt_status *irqstatus)
{
	/* all possible error irq.  Note error irqs are not enabled, it is
	 * checked only when other interrupts are present. */
	if (irqstatus->afOverflowIrq)
		FUNC2(VFE_MSG_ID_AF_OVERFLOW);

	if (irqstatus->awbOverflowIrq)
		FUNC2(VFE_MSG_ID_AWB_OVERFLOW);

	if (irqstatus->axiErrorIrq)
		FUNC2(VFE_MSG_ID_AXI_ERROR);

	if (irqstatus->busOverflowIrq)
		FUNC0();

	if (irqstatus->camifErrorIrq)
		FUNC1();

	if (irqstatus->camifOverflowIrq)
		FUNC2(VFE_MSG_ID_CAMIF_OVERFLOW);

	if (irqstatus->violationIrq)
		;
}