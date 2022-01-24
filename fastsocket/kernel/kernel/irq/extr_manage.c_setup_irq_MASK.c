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
struct irqaction {int dummy; } ;
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,struct irq_desc*,struct irqaction*) ; 
 struct irq_desc* FUNC1 (unsigned int) ; 

int FUNC2(unsigned int irq, struct irqaction *act)
{
	struct irq_desc *desc = FUNC1(irq);

	return FUNC0(irq, desc, act);
}