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
struct snd_emu10k1 {int /*<<< orphan*/  emu_lock; scalar_t__ port; scalar_t__ audigy; } ;

/* Variables and functions */
 unsigned int A_PTR_ADDRESS_MASK ; 
 scalar_t__ DATA ; 
 scalar_t__ PTR ; 
 unsigned int PTR_ADDRESS_MASK ; 
 unsigned int PTR_CHANNELNUM_MASK ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned int FUNC4(struct snd_emu10k1 * emu, unsigned int reg, unsigned int chn)
{
	unsigned long flags;
	unsigned int regptr, val;
	unsigned int mask;

	mask = emu->audigy ? A_PTR_ADDRESS_MASK : PTR_ADDRESS_MASK;
	regptr = ((reg << 16) & mask) | (chn & PTR_CHANNELNUM_MASK);

	if (reg & 0xff000000) {
		unsigned char size, offset;
		
		size = (reg >> 24) & 0x3f;
		offset = (reg >> 16) & 0x1f;
		mask = ((1 << size) - 1) << offset;
		
		FUNC2(&emu->emu_lock, flags);
		FUNC1(regptr, emu->port + PTR);
		val = FUNC0(emu->port + DATA);
		FUNC3(&emu->emu_lock, flags);
		
		return (val & mask) >> offset;
	} else {
		FUNC2(&emu->emu_lock, flags);
		FUNC1(regptr, emu->port + PTR);
		val = FUNC0(emu->port + DATA);
		FUNC3(&emu->emu_lock, flags);
		return val;
	}
}