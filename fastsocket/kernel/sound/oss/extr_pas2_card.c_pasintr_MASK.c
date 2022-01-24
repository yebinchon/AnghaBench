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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	int             status;

	status = FUNC2(0x0B89);
	FUNC3(status, 0x0B89);	/* Clear interrupt */

	if (status & 0x08)
	{
		  FUNC1(status, 1);
		  status &= ~0x08;
	}
	if (status & 0x10)
	{
		  FUNC0();
		  status &= ~0x10;
	}
	return IRQ_HANDLED;
}