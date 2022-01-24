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
struct snd_pcm {int /*<<< orphan*/  name; struct snd_msnd* private_data; } ;
struct snd_msnd {int dummy; } ;
struct snd_card {struct snd_msnd* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  snd_msnd_capture_ops ; 
 int /*<<< orphan*/  snd_msnd_playback_ops ; 
 int FUNC0 (struct snd_card*,char*,int,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct snd_card *card, int device,
			struct snd_pcm **rpcm)
{
	struct snd_msnd *chip = card->private_data;
	struct snd_pcm	*pcm;
	int err;

	err = FUNC0(card, "MSNDPINNACLE", device, 1, 1, &pcm);
	if (err < 0)
		return err;

	FUNC1(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_msnd_playback_ops);
	FUNC1(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_msnd_capture_ops);

	pcm->private_data = chip;
	FUNC2(pcm->name, "Hurricane");


	if (rpcm)
		*rpcm = pcm;
	return 0;
}