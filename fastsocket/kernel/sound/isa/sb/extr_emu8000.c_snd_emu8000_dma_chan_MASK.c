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
struct snd_emu8000 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu8000*,int,int) ; 
 int EMU8000_RAM_CLOSE ; 
 int EMU8000_RAM_MODE_MASK ; 
 int EMU8000_RAM_RIGHT ; 
 int EMU8000_RAM_WRITE ; 
 int /*<<< orphan*/  FUNC7 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 

void
FUNC8(struct snd_emu8000 *emu, int ch, int mode)
{
	unsigned right_bit = (mode & EMU8000_RAM_RIGHT) ? 0x01000000 : 0;
	mode &= EMU8000_RAM_MODE_MASK;
	if (mode == EMU8000_RAM_CLOSE) {
		FUNC0(emu, ch, 0);
		FUNC4(emu, ch, 0x807F);
		return;
	}
	FUNC4(emu, ch, 0x80);
	FUNC7(emu, ch, 0);
	FUNC3(emu, ch, 0);
	FUNC6(emu, ch, 0x40000000);
	FUNC1(emu, ch, 0x40000000);
	FUNC5(emu, ch, 0);
	FUNC2(emu, ch, 0);
	if (mode == EMU8000_RAM_WRITE) /* DMA write */
		FUNC0(emu, ch, 0x06000000 | right_bit);
	else	   /* DMA read */
		FUNC0(emu, ch, 0x04000000 | right_bit);
}