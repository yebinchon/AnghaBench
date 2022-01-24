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
struct snd_emu8000 {int /*<<< orphan*/  emu; } ;

/* Variables and functions */
 int EMU8000_DRAM_VOICES ; 
 int /*<<< orphan*/  EMU8000_RAM_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct snd_emu8000 *emu)
{
	int i;

	for (i = 0; i < 2; i++)
		FUNC1(emu->emu, i);
	for (; i < EMU8000_DRAM_VOICES; i++) {
		FUNC0(emu, i, EMU8000_RAM_CLOSE);
		FUNC1(emu->emu, i);
	}
}