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
struct snd_trident_voice {int ESO; int FMC; int RVol; int CVol; int GVSel; int Pan; int Vol; int Attribute; int isync2; int isync_mark; scalar_t__ FMS; scalar_t__ Alpha; scalar_t__ EC; int /*<<< orphan*/  CTRL; scalar_t__ CSO; int /*<<< orphan*/  LBA; int /*<<< orphan*/  spurious_threshold; int /*<<< orphan*/  Delta; struct snd_trident_voice* extra; } ;
struct snd_trident {int /*<<< orphan*/  reg_lock; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int buffer_size; int /*<<< orphan*/  rate; int /*<<< orphan*/  dma_addr; struct snd_trident_voice* private_data; } ;

/* Variables and functions */
 int T4D_DEFAULT_PCM_PAN ; 
 struct snd_trident* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_trident*,struct snd_trident_voice*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct snd_trident *trident = FUNC0(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_trident_voice *voice = runtime->private_data;
	struct snd_trident_voice *evoice = voice->extra;

	FUNC6(&trident->reg_lock);

	voice->LBA = runtime->dma_addr;
	voice->Delta = FUNC2(runtime->rate);
	voice->spurious_threshold = FUNC4(runtime->rate, runtime->period_size);

	// Set voice parameters
	voice->CSO = 0;
	voice->ESO = runtime->buffer_size - 1;		/* in samples */
	voice->CTRL = FUNC1(substream);
	voice->FMC = 0;
	voice->RVol = 0;
	voice->CVol = 0;
	voice->GVSel = 1;
	voice->Pan = T4D_DEFAULT_PCM_PAN;
	voice->Vol = 0;
	voice->EC = 0;
	voice->Alpha = 0;
	voice->FMS = 0;

	voice->Attribute = (2 << (30-16)) |
			   (2 << (26-16)) |
			   (2 << (24-16)) |
			   (1 << (23-16));

	FUNC5(trident, voice);

	if (evoice != NULL) {
		evoice->Delta = FUNC3(runtime->rate);
		evoice->spurious_threshold = voice->spurious_threshold;
		evoice->LBA = voice->LBA;
		evoice->CSO = 0;
		evoice->ESO = (runtime->period_size * 2) + 20 - 1; /* in samples, 20 means correction */
		evoice->CTRL = voice->CTRL;
		evoice->FMC = 3;
		evoice->GVSel = 0;
		evoice->EC = 0;
		evoice->Alpha = 0;
		evoice->FMS = 0;
		evoice->Vol = 0x3ff;			/* mute */
		evoice->RVol = evoice->CVol = 0x7f;	/* mute */
		evoice->Pan = 0x7f;			/* mute */
		evoice->Attribute = 0;
		FUNC5(trident, evoice);
		evoice->isync2 = 1;
		evoice->isync_mark = runtime->period_size;
		evoice->ESO = (runtime->period_size * 2) - 1;
	}
	
	FUNC7(&trident->reg_lock);
	return 0;
}