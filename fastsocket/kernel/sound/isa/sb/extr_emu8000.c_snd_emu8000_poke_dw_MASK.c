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
struct snd_emu8000 {unsigned int last_reg; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct snd_emu8000 *emu, unsigned int port, unsigned int reg, unsigned int val)
{
	unsigned long flags;
	FUNC2(&emu->reg_lock, flags);
	if (reg != emu->last_reg) {
		FUNC1((unsigned short)reg, FUNC0(emu)); /* Set register */
		emu->last_reg = reg;
	}
	FUNC1((unsigned short)val, port); /* Send low word of data */
	FUNC1((unsigned short)(val>>16), port+2); /* Send high word of data */
	FUNC3(&emu->reg_lock, flags);
}