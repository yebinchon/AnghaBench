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
typedef  int u32 ;
struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; int dma_addr; int /*<<< orphan*/  buffer_size; } ;
struct snd_emu10k1 {int p16v_device_offset; } ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SPDIF_SAMPLERATE ; 
 int CAPTURE_BUFFER_SIZE ; 
 int CAPTURE_DMA_ADDR ; 
 int CAPTURE_POINTER ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int,int,int) ; 
 int FUNC2 (struct snd_emu10k1*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_emu10k1* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_emu10k1 *emu = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int channel = substream->pcm->device - emu->p16v_device_offset;
	u32 tmp;

	/*
	printk(KERN_DEBUG "prepare capture:channel_number=%d, rate=%d, "
	       "format=0x%x, channels=%d, buffer_size=%ld, period_size=%ld, "
	       "frames_to_bytes=%d\n",
	       channel, runtime->rate, runtime->format, runtime->channels,
	       runtime->buffer_size, runtime->period_size,
	       frames_to_bytes(runtime, 1));
	*/
	tmp = FUNC2(emu, A_SPDIF_SAMPLERATE, channel);
        switch (runtime->rate) {
	case 44100:
	  FUNC3(emu, A_SPDIF_SAMPLERATE, channel, (tmp & ~0x0e00) | 0x0800);
	  break;
	case 96000:
	  FUNC3(emu, A_SPDIF_SAMPLERATE, channel, (tmp & ~0x0e00) | 0x0400);
	  break;
	case 192000:
	  FUNC3(emu, A_SPDIF_SAMPLERATE, channel, (tmp & ~0x0e00) | 0x0200);
	  break;
	case 48000:
	default:
	  FUNC3(emu, A_SPDIF_SAMPLERATE, channel, (tmp & ~0x0e00) | 0x0000);
	  break;
	}
	/* FIXME: Check emu->buffer.size before actually writing to it. */
	FUNC1(emu, 0x13, channel, 0);
	FUNC1(emu, CAPTURE_DMA_ADDR, channel, runtime->dma_addr);
	FUNC1(emu, CAPTURE_BUFFER_SIZE, channel, FUNC0(runtime, runtime->buffer_size) << 16); // buffer size in bytes
	FUNC1(emu, CAPTURE_POINTER, channel, 0);
	//snd_emu10k1_ptr20_write(emu, CAPTURE_SOURCE, 0x0, 0x333300e4); /* Select MIC or Line in */
	//snd_emu10k1_ptr20_write(emu, EXTENDED_INT_MASK, 0, snd_emu10k1_ptr20_read(emu, EXTENDED_INT_MASK, 0) | (0x110000<<channel));

	return 0;
}