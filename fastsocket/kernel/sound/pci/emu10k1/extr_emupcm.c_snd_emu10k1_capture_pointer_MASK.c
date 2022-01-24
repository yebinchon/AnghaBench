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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int /*<<< orphan*/  capture_idx_reg; scalar_t__ first_ptr; int /*<<< orphan*/  running; } ;
struct snd_emu10k1 {int dummy; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,unsigned int) ; 
 int FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_emu10k1* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_emu10k1 *emu = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_emu10k1_pcm *epcm = runtime->private_data;
	unsigned int ptr;

	if (!epcm->running)
		return 0;
	if (epcm->first_ptr) {
		FUNC3(50);	/* hack, it takes awhile until capture is started */
		epcm->first_ptr = 0;
	}
	ptr = FUNC1(emu, epcm->capture_idx_reg, 0) & 0x0000ffff;
	return FUNC0(runtime, ptr);
}