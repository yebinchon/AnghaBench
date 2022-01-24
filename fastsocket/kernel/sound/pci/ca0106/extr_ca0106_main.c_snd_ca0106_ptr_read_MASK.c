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
struct snd_ca0106 {int /*<<< orphan*/  emu_lock; scalar_t__ port; } ;

/* Variables and functions */
 scalar_t__ DATA ; 
 scalar_t__ PTR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned int FUNC4(struct snd_ca0106 * emu, 
					  unsigned int reg, 
					  unsigned int chn)
{
	unsigned long flags;
	unsigned int regptr, val;
  
	regptr = (reg << 16) | chn;

	FUNC2(&emu->emu_lock, flags);
	FUNC1(regptr, emu->port + PTR);
	val = FUNC0(emu->port + DATA);
	FUNC3(&emu->emu_lock, flags);
	return val;
}