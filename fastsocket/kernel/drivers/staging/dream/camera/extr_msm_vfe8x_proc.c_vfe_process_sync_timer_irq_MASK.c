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
struct vfe_interrupt_status {scalar_t__ syncTimer2Irq; scalar_t__ syncTimer1Irq; scalar_t__ syncTimer0Irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFE_MSG_ID_SYNC_TIMER0_DONE ; 
 int /*<<< orphan*/  VFE_MSG_ID_SYNC_TIMER1_DONE ; 
 int /*<<< orphan*/  VFE_MSG_ID_SYNC_TIMER2_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(
	struct vfe_interrupt_status *irqstatus)
{
	if (irqstatus->syncTimer0Irq)
		FUNC0(VFE_MSG_ID_SYNC_TIMER0_DONE);

	if (irqstatus->syncTimer1Irq)
		FUNC0(VFE_MSG_ID_SYNC_TIMER1_DONE);

	if (irqstatus->syncTimer2Irq)
		FUNC0(VFE_MSG_ID_SYNC_TIMER2_DONE);
}