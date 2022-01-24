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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct irq_desc*) ; 

void FUNC3(unsigned int irq, struct irq_desc *desc)
{
	FUNC2(irq, desc);
	FUNC1(irq, desc);
	FUNC0(irq);
}