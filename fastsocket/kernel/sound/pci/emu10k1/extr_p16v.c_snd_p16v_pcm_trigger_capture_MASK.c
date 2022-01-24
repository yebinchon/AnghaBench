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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int running; } ;
struct snd_emu10k1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASIC_INTERRUPT ; 
 int EINVAL ; 
 int INTE2_CAPTURE_CH_0_HALF_LOOP ; 
 int INTE2_CAPTURE_CH_0_LOOP ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int FUNC0 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu10k1*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,int) ; 
 struct snd_emu10k1* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
                                   int cmd)
{
	struct snd_emu10k1 *emu = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_emu10k1_pcm *epcm = runtime->private_data;
	int channel = 0;
	int result = 0;
	u32 inte = INTE2_CAPTURE_CH_0_LOOP | INTE2_CAPTURE_CH_0_HALF_LOOP;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC3(emu, inte);
		FUNC1(emu, BASIC_INTERRUPT, 0, FUNC0(emu, BASIC_INTERRUPT, 0)|(0x100<<channel));
		epcm->running = 1;
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC1(emu, BASIC_INTERRUPT, 0, FUNC0(emu, BASIC_INTERRUPT, 0) & ~(0x100<<channel));
		FUNC2(emu, inte);
		//snd_emu10k1_ptr20_write(emu, EXTENDED_INT_MASK, 0, snd_emu10k1_ptr20_read(emu, EXTENDED_INT_MASK, 0) & ~(0x110000<<channel));
		epcm->running = 0;
		break;
	default:
		result = -EINVAL;
		break;
	}
	return result;
}