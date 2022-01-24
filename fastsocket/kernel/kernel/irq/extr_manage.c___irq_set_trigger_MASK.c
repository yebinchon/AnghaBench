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
struct irq_desc {unsigned long status; struct irq_chip* chip; } ;
struct irq_chip {int (* set_type ) (unsigned int,unsigned long) ;scalar_t__ name; } ;

/* Variables and functions */
 unsigned long IRQ_LEVEL ; 
 unsigned long IRQ_TYPE_LEVEL_HIGH ; 
 unsigned long IRQ_TYPE_LEVEL_LOW ; 
 unsigned long IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned int,int (*) (unsigned int,unsigned long)) ; 
 int FUNC2 (unsigned int,unsigned long) ; 

int FUNC3(struct irq_desc *desc, unsigned int irq,
		unsigned long flags)
{
	int ret;
	struct irq_chip *chip = desc->chip;

	if (!chip || !chip->set_type) {
		/*
		 * IRQF_TRIGGER_* but the PIC does not support multiple
		 * flow-types?
		 */
		FUNC0("No set_type function for IRQ %d (%s)\n", irq,
				chip ? (chip->name ? : "unknown") : "unknown");
		return 0;
	}

	/* caller masked out all except trigger mode flags */
	ret = chip->set_type(irq, flags);

	if (ret)
		FUNC1("setting trigger mode %d for irq %u failed (%pF)\n",
				(int)flags, irq, chip->set_type);
	else {
		if (flags & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_LEVEL_HIGH))
			flags |= IRQ_LEVEL;
		/* note that IRQF_TRIGGER_MASK == IRQ_TYPE_SENSE_MASK */
		desc->status &= ~(IRQ_LEVEL | IRQ_TYPE_SENSE_MASK);
		desc->status |= flags;
	}

	return ret;
}