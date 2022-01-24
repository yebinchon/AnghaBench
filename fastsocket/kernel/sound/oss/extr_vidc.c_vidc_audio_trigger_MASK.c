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
struct audio_operations {int flags; } ;

/* Variables and functions */
 int DMA_ACTIVE ; 
 int DMA_CR_E ; 
 int /*<<< orphan*/  IOMD_SD0CR ; 
 int PCM_ENABLE_OUTPUT ; 
 struct audio_operations** audio_devs ; 
 int /*<<< orphan*/  dma_interrupt ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  vidc_audio_dma_interrupt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(int dev, int enable_bits)
{
	struct audio_operations *adev = audio_devs[dev];

	if (enable_bits & PCM_ENABLE_OUTPUT) {
		if (!(adev->flags & DMA_ACTIVE)) {
			unsigned long flags;

			FUNC2(flags);

			/* prevent recusion */
			adev->flags |= DMA_ACTIVE;

			dma_interrupt = vidc_audio_dma_interrupt;
			FUNC3(0, NULL);
			FUNC0(DMA_CR_E | 0x10, IOMD_SD0CR);

			FUNC1(flags);
		}
	}
}