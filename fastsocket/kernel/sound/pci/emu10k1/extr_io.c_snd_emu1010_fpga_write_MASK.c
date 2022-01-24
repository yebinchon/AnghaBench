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
typedef  int u32 ;
struct snd_emu10k1 {int /*<<< orphan*/  emu_lock; scalar_t__ port; } ;

/* Variables and functions */
 scalar_t__ A_IOCFG ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct snd_emu10k1 * emu, u32 reg, u32 value)
{
	unsigned long flags;

	if (reg > 0x3f)
		return 1;
	reg += 0x40; /* 0x40 upwards are registers. */
	if (value < 0 || value > 0x3f) /* 0 to 0x3f are values */
		return 1;
	FUNC1(&emu->emu_lock, flags);
	FUNC0(reg, emu->port + A_IOCFG);
	FUNC3(10);
	FUNC0(reg | 0x80, emu->port + A_IOCFG);  /* High bit clocks the value into the fpga. */
	FUNC3(10);
	FUNC0(value, emu->port + A_IOCFG);
	FUNC3(10);
	FUNC0(value | 0x80 , emu->port + A_IOCFG);  /* High bit clocks the value into the fpga. */
	FUNC2(&emu->emu_lock, flags);

	return 0;
}