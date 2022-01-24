#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; TYPE_1__* dmap_out; } ;
struct TYPE_3__ {int dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DMA_AUTOMODE ; 
 int /*<<< orphan*/  PCM_ADC ; 
 TYPE_2__** audio_devs ; 
 size_t pas_audiodev ; 
 int /*<<< orphan*/  pas_lock ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int pcm_count ; 
 int /*<<< orphan*/  pcm_mode ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(int dev, unsigned long buf, int count,
		      int intrflag)
{
	unsigned long   flags;
	int             cnt;

	FUNC0(FUNC3("pas2_pcm.c: static void pas_audio_start_input(char *buf = %P, int count = %X)\n", buf, count));

	cnt = count;
	if (audio_devs[dev]->dmap_out->dma > 3)
		cnt >>= 1;

	if (audio_devs[pas_audiodev]->flags & DMA_AUTOMODE &&
	    intrflag &&
	    cnt == pcm_count)
		return;

	FUNC4(&pas_lock, flags);

	/* DMAbuf_start_dma (dev, buf, count, DMA_MODE_READ); */

	if (audio_devs[dev]->dmap_out->dma > 3)
		count >>= 1;

	if (count != pcm_count)
	{
		FUNC2(FUNC1(0x0B8A) & ~0x80, 0x0B8A);
		FUNC2(0x40 | 0x30 | 0x04, 0x138B);
		FUNC2(count & 0xff, 0x1389);
		FUNC2((count >> 8) & 0xff, 0x1389);
		FUNC2(FUNC1(0x0B8A) | 0x80, 0x0B8A);

		pcm_count = count;
	}
	FUNC2(FUNC1(0x0B8A) | 0x80 | 0x40, 0x0B8A);
#ifdef NO_TRIGGER
	pas_write((pas_read(0xF8A) | 0x40) & ~0x10, 0xF8A);
#endif

	pcm_mode = PCM_ADC;

	FUNC5(&pas_lock, flags);
}