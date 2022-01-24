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
struct snd_opl3 {unsigned long r_port; unsigned long l_port; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 unsigned short OPL3_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct snd_opl3 * opl3, unsigned short cmd, unsigned char val)
{
	unsigned long flags;
	unsigned long port;

	/*
	 * The original 2-OP synth requires a quite long delay
	 * after writing to a register.
	 */

	port = (cmd & OPL3_RIGHT) ? opl3->r_port : opl3->l_port;

	FUNC1(&opl3->reg_lock, flags);

	FUNC0((unsigned char) cmd, port);
	FUNC3(10);

	FUNC0((unsigned char) val, port + 1);
	FUNC3(30);

	FUNC2(&opl3->reg_lock, flags);
}