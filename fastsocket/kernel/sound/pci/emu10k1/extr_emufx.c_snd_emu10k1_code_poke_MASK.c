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
struct snd_emu10k1_fx8010_code {int /*<<< orphan*/ * code; int /*<<< orphan*/  code_valid; } ;
struct snd_emu10k1 {scalar_t__ audigy; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_emu10k1 *emu,
				 struct snd_emu10k1_fx8010_code *icode)
{
	u32 pc, lo, hi;

	for (pc = 0; pc < (emu->audigy ? 2*1024 : 2*512); pc += 2) {
		if (!FUNC2(pc / 2, icode->code_valid))
			continue;
		if (FUNC0(lo, &icode->code[pc + 0]) ||
		    FUNC0(hi, &icode->code[pc + 1]))
			return -EFAULT;
		FUNC1(emu, pc + 0, lo);
		FUNC1(emu, pc + 1, hi);
	}
	return 0;
}