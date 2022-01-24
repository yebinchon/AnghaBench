#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {unsigned int addr; int /*<<< orphan*/ * area; } ;
struct snd_bt87x {unsigned int line_bytes; unsigned int lines; TYPE_1__ dma_risc; int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MAX_RISC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int PAGE_SIZE ; 
 unsigned int RISC_EOL ; 
 unsigned int RISC_IRQ ; 
 unsigned int RISC_JUMP ; 
 unsigned int RISC_RESET_STATUS_SHIFT ; 
 unsigned int RISC_SET_STATUS_SHIFT ; 
 unsigned int RISC_SOL ; 
 unsigned int RISC_SYNC ; 
 unsigned int RISC_SYNC_FM1 ; 
 unsigned int RISC_SYNC_VRO ; 
 unsigned int RISC_WRITE ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 void* FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct snd_pcm_substream*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct snd_bt87x *chip, struct snd_pcm_substream *substream,
			       	 unsigned int periods, unsigned int period_bytes)
{
	unsigned int i, offset;
	u32 *risc;

	if (chip->dma_risc.area == NULL) {
		if (FUNC2(SNDRV_DMA_TYPE_DEV, FUNC3(chip->pci),
					FUNC0(MAX_RISC_SIZE), &chip->dma_risc) < 0)
			return -ENOMEM;
	}
	risc = (u32 *)chip->dma_risc.area;
	offset = 0;
	*risc++ = FUNC1(RISC_SYNC | RISC_SYNC_FM1);
	*risc++ = FUNC1(0);
	for (i = 0; i < periods; ++i) {
		u32 rest;

		rest = period_bytes;
		do {
			u32 cmd, len;
			unsigned int addr;

			len = PAGE_SIZE - (offset % PAGE_SIZE);
			if (len > rest)
				len = rest;
			cmd = RISC_WRITE | len;
			if (rest == period_bytes) {
				u32 block = i * 16 / periods;
				cmd |= RISC_SOL;
				cmd |= block << RISC_SET_STATUS_SHIFT;
				cmd |= (~block & 0xf) << RISC_RESET_STATUS_SHIFT;
			}
			if (len == rest)
				cmd |= RISC_EOL | RISC_IRQ;
			*risc++ = FUNC1(cmd);
			addr = FUNC4(substream, offset);
			*risc++ = FUNC1(addr);
			offset += len;
			rest -= len;
		} while (rest > 0);
	}
	*risc++ = FUNC1(RISC_SYNC | RISC_SYNC_VRO);
	*risc++ = FUNC1(0);
	*risc++ = FUNC1(RISC_JUMP);
	*risc++ = FUNC1(chip->dma_risc.addr);
	chip->line_bytes = period_bytes;
	chip->lines = periods;
	return 0;
}