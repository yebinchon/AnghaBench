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
struct lx6464es {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lx6464es*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(struct lx6464es *chip)
{
	FUNC1("->lx_irq_enable\n");
	FUNC0(chip, 1);
}