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
struct snd_emu10k1_pcm {scalar_t__ start_addr; int /*<<< orphan*/ * memblk; int /*<<< orphan*/ ** voices; int /*<<< orphan*/  emu; int /*<<< orphan*/ * extra; } ;
struct snd_emu10k1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_emu10k1* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_emu10k1 *emu = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_emu10k1_pcm *epcm;

	if (runtime->private_data == NULL)
		return 0;
	epcm = runtime->private_data;
	if (epcm->extra) {
		FUNC1(epcm->emu, epcm->extra);
		epcm->extra = NULL;
	}
	if (epcm->voices[1]) {
		FUNC1(epcm->emu, epcm->voices[1]);
		epcm->voices[1] = NULL;
	}
	if (epcm->voices[0]) {
		FUNC1(epcm->emu, epcm->voices[0]);
		epcm->voices[0] = NULL;
	}
	if (epcm->memblk) {
		FUNC0(emu, epcm->memblk);
		epcm->memblk = NULL;
		epcm->start_addr = 0;
	}
	FUNC2(substream);
	return 0;
}