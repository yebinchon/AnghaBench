#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lith; } ;
typedef  TYPE_1__ vwsnd_dev_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,void*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	vwsnd_dev_t *devc = dev_id;
	unsigned int status;

	FUNC0("(irq=%d, dev_id=0x%p)\n", irq, dev_id);

	status = FUNC1(&devc->lith);
	FUNC2(devc, status);
	FUNC3(devc, status);
	return IRQ_HANDLED;
}