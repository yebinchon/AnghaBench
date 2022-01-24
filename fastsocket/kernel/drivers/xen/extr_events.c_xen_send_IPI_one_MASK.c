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
typedef  enum ipi_vector { ____Placeholder_ipi_vector } ipi_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ipi_to_irq ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

void FUNC3(unsigned int cpu, enum ipi_vector vector)
{
	int irq = FUNC2(ipi_to_irq, cpu)[vector];
	FUNC0(irq < 0);
	FUNC1(irq);
}