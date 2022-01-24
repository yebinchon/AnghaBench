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
typedef  int u32 ;
struct vlynq_device {unsigned int irq_start; TYPE_1__* remote; } ;
struct TYPE_2__ {int /*<<< orphan*/ * int_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 int VINT_LEVEL_LOW ; 
 int FUNC1 (int) ; 
 int VINT_TYPE_EDGE ; 
 struct vlynq_device* FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(unsigned int irq, unsigned int flow_type)
{
	u32 val;
	struct vlynq_device *dev = FUNC2(irq);
	int virq;

	FUNC0(!dev);
	virq = irq - dev->irq_start;
	val = FUNC3(&dev->remote->int_device[virq >> 2]);
	switch (flow_type & IRQ_TYPE_SENSE_MASK) {
	case IRQ_TYPE_EDGE_RISING:
	case IRQ_TYPE_EDGE_FALLING:
	case IRQ_TYPE_EDGE_BOTH:
		val |= VINT_TYPE_EDGE << FUNC1(virq);
		val &= ~(VINT_LEVEL_LOW << FUNC1(virq));
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		val &= ~(VINT_TYPE_EDGE << FUNC1(virq));
		val &= ~(VINT_LEVEL_LOW << FUNC1(virq));
		break;
	case IRQ_TYPE_LEVEL_LOW:
		val &= ~(VINT_TYPE_EDGE << FUNC1(virq));
		val |= VINT_LEVEL_LOW << FUNC1(virq);
		break;
	default:
		return -EINVAL;
	}
	FUNC4(val, &dev->remote->int_device[virq >> 2]);
	return 0;
}