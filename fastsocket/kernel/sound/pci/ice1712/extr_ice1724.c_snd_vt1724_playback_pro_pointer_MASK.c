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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_ice1712 {int dummy; } ;
typedef  size_t snd_pcm_uframes_t ;
struct TYPE_2__ {size_t dma_addr; size_t buffer_size; scalar_t__ period_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLAYBACK_ADDR ; 
 int /*<<< orphan*/  PLAYBACK_SIZE ; 
 int VT1724_PDMA0_START ; 
 size_t FUNC1 (TYPE_1__*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct snd_ice1712* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC3(substream);
	size_t ptr;

	if (!(FUNC2(FUNC0(ice, DMA_CONTROL)) & VT1724_PDMA0_START))
		return 0;
#if 0 /* read PLAYBACK_ADDR */
	ptr = inl(ICEMT1724(ice, PLAYBACK_ADDR));
	if (ptr < substream->runtime->dma_addr) {
		snd_printd("ice1724: invalid negative ptr\n");
		return 0;
	}
	ptr -= substream->runtime->dma_addr;
	ptr = bytes_to_frames(substream->runtime, ptr);
	if (ptr >= substream->runtime->buffer_size) {
		snd_printd("ice1724: invalid ptr %d (size=%d)\n",
			   (int)ptr, (int)substream->runtime->period_size);
		return 0;
	}
#else /* read PLAYBACK_SIZE */
	ptr = FUNC2(FUNC0(ice, PLAYBACK_SIZE)) & 0xffffff;
	ptr = (ptr + 1) << 2;
	ptr = FUNC1(substream->runtime, ptr);
	if (!ptr)
		;
	else if (ptr <= substream->runtime->buffer_size)
		ptr = substream->runtime->buffer_size - ptr;
	else {
		FUNC4("ice1724: invalid ptr %d (size=%d)\n",
			   (int)ptr, (int)substream->runtime->buffer_size);
		ptr = 0;
	}
#endif
	return ptr;
}