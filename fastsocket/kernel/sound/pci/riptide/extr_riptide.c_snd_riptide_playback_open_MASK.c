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
struct snd_riptide {struct snd_pcm_substream** playback_substream; } ;
struct snd_pcm_substream {int number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct pcmhw* private_data; int /*<<< orphan*/  hw; } ;
struct pcmhw {int* intdec; int /*<<< orphan*/  state; int /*<<< orphan*/  source; int /*<<< orphan*/  id; int /*<<< orphan*/  paths; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  ST_STOP ; 
 struct pcmhw* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lbus_play_paths ; 
 int /*<<< orphan*/ * play_ids ; 
 int /*<<< orphan*/ * play_sources ; 
 int FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_riptide* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  snd_riptide_playback ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_riptide *chip = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct pcmhw *data;
	int sub_num = substream->number;

	chip->playback_substream[sub_num] = substream;
	runtime->hw = snd_riptide_playback;
	data = FUNC0(sizeof(struct pcmhw), GFP_KERNEL);
	data->paths = lbus_play_paths[sub_num];
	data->id = play_ids[sub_num];
	data->source = play_sources[sub_num];
	data->intdec[0] = 0xff;
	data->intdec[1] = 0xff;
	data->state = ST_STOP;
	runtime->private_data = data;
	return FUNC1(runtime,
					     SNDRV_PCM_HW_PARAM_PERIODS);
}