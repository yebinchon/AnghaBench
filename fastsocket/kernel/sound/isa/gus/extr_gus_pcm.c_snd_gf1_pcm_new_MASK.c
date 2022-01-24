#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_substream* next; } ;
struct snd_pcm {scalar_t__ name; int /*<<< orphan*/  id; TYPE_1__* streams; int /*<<< orphan*/  info_flags; int /*<<< orphan*/  dev_subclass; struct snd_gus_card* private_data; } ;
struct TYPE_6__ {int index; } ;
struct snd_kcontrol {TYPE_3__ id; } ;
struct TYPE_5__ {int pcm_channels; int dma1; int dma2; } ;
struct snd_gus_card {int revision; scalar_t__ codec_flag; struct snd_pcm* pcm; scalar_t__ interwave; TYPE_2__ gf1; int /*<<< orphan*/  ace_flag; int /*<<< orphan*/  ess_flag; struct snd_card* card; } ;
struct snd_card {int dummy; } ;
struct TYPE_4__ {struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_INFO_HALF_DUPLEX ; 
 size_t SNDRV_PCM_STREAM_CAPTURE ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SNDRV_PCM_SUBCLASS_GENERIC_MIX ; 
 int FUNC0 (struct snd_card*,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC1 (int /*<<< orphan*/ *,struct snd_gus_card*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  snd_gf1_pcm_capture_ops ; 
 int /*<<< orphan*/  snd_gf1_pcm_playback_ops ; 
 int /*<<< orphan*/  snd_gf1_pcm_volume_control ; 
 int /*<<< orphan*/  snd_gf1_pcm_volume_control1 ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct snd_card*,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

int FUNC10(struct snd_gus_card * gus, int pcm_dev, int control_index, struct snd_pcm ** rpcm)
{
	struct snd_card *card;
	struct snd_kcontrol *kctl;
	struct snd_pcm *pcm;
	struct snd_pcm_substream *substream;
	int capture, err;

	if (rpcm)
		*rpcm = NULL;
	card = gus->card;
	capture = !gus->interwave && !gus->ess_flag && !gus->ace_flag ? 1 : 0;
	err = FUNC4(card,
			  gus->interwave ? "AMD InterWave" : "GF1",
			  pcm_dev,
			  gus->gf1.pcm_channels / 2,
			  capture,
			  &pcm);
	if (err < 0)
		return err;
	pcm->private_data = gus;
	/* playback setup */
	FUNC5(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_gf1_pcm_playback_ops);

	for (substream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream; substream; substream = substream->next)
		FUNC3(substream, SNDRV_DMA_TYPE_DEV,
					      FUNC2(),
					      64*1024, gus->gf1.dma1 > 3 ? 128*1024 : 64*1024);
	
	pcm->info_flags = 0;
	pcm->dev_subclass = SNDRV_PCM_SUBCLASS_GENERIC_MIX;
	if (capture) {
		FUNC5(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_gf1_pcm_capture_ops);
		if (gus->gf1.dma2 == gus->gf1.dma1)
			pcm->info_flags |= SNDRV_PCM_INFO_HALF_DUPLEX;
		FUNC3(pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream,
					      SNDRV_DMA_TYPE_DEV, FUNC2(),
					      64*1024, gus->gf1.dma2 > 3 ? 128*1024 : 64*1024);
	}
	FUNC8(pcm->name, pcm->id);
	if (gus->interwave) {
		FUNC6(pcm->name + FUNC9(pcm->name), " rev %c", gus->revision + 'A');
	}
	FUNC7(pcm->name, " (synth)");
	gus->pcm = pcm;

	if (gus->codec_flag)
		kctl = FUNC1(&snd_gf1_pcm_volume_control1, gus);
	else
		kctl = FUNC1(&snd_gf1_pcm_volume_control, gus);
	if ((err = FUNC0(card, kctl)) < 0)
		return err;
	kctl->id.index = control_index;

	if (rpcm)
		*rpcm = pcm;
	return 0;
}