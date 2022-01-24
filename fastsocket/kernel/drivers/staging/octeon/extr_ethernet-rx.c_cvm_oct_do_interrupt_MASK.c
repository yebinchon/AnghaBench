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
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  t; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_POW_WQ_INT ; 
 scalar_t__ INTERRUPT_LIMIT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 TYPE_1__* cvm_oct_tasklet ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int pow_receive_group ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC5(int cpl, void *dev_id)
{
	/* Acknowledge the interrupt */
	if (INTERRUPT_LIMIT)
		FUNC0(CVMX_POW_WQ_INT, 1 << pow_receive_group);
	else
		FUNC0(CVMX_POW_WQ_INT, 0x10001 << pow_receive_group);
	FUNC1();
	FUNC4(&cvm_oct_tasklet[FUNC3()].t);
	FUNC2();
	return IRQ_HANDLED;
}