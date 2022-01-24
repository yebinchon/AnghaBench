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
struct snd_sb {int version; struct snd_card* card; } ;
struct snd_pcm {struct snd_sb* private_data; int /*<<< orphan*/  info_flags; int /*<<< orphan*/  name; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_INFO_HALF_DUPLEX ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct snd_card*,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_sb8_capture_ops ; 
 int /*<<< orphan*/  snd_sb8_playback_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 

int FUNC5(struct snd_sb *chip, int device, struct snd_pcm ** rpcm)
{
	struct snd_card *card = chip->card;
	struct snd_pcm *pcm;
	int err;

	if (rpcm)
		*rpcm = NULL;
	if ((err = FUNC2(card, "SB8 DSP", device, 1, 1, &pcm)) < 0)
		return err;
	FUNC4(pcm->name, "DSP v%i.%i", chip->version >> 8, chip->version & 0xff);
	pcm->info_flags = SNDRV_PCM_INFO_HALF_DUPLEX;
	pcm->private_data = chip;

	FUNC3(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_sb8_playback_ops);
	FUNC3(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_sb8_capture_ops);

	FUNC1(pcm, SNDRV_DMA_TYPE_DEV,
					      FUNC0(),
					      64*1024, 64*1024);

	if (rpcm)
		*rpcm = pcm;
	return 0;
}