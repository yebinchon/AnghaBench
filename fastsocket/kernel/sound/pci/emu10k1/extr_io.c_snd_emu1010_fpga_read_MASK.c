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
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct snd_emu10k1 * emu, u32 reg, u32 *value)
{
	unsigned long flags;
	if (reg > 0x3f)
		return 1;
	reg += 0x40; /* 0x40 upwards are registers. */
	FUNC2(&emu->emu_lock, flags);
	FUNC1(reg, emu->port + A_IOCFG);
	FUNC4(10);
	FUNC1(reg | 0x80, emu->port + A_IOCFG);  /* High bit clocks the value into the fpga. */
	FUNC4(10);
	*value = ((FUNC0(emu->port + A_IOCFG) >> 8) & 0x7f);
	FUNC3(&emu->emu_lock, flags);

	return 0;
}