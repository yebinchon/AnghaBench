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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  period_size; int /*<<< orphan*/  buffer_size; } ;
struct fsi_priv {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fsi_priv*) ; 
 struct fsi_priv* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsi_priv*,struct snd_pcm_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream, int cmd,
			   struct snd_soc_dai *dai)
{
	struct fsi_priv *fsi = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int is_play = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
	int ret = 0;

	/* capture not supported */
	if (!is_play)
		return -ENODEV;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC5(fsi, substream,
				FUNC0(runtime, runtime->buffer_size),
				FUNC0(runtime, runtime->period_size));
		ret = FUNC1(fsi);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC3(fsi, is_play);
		FUNC4(fsi);
		break;
	}

	return ret;
}