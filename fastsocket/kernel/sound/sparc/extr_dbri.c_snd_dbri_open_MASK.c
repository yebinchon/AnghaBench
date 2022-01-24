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
struct snd_pcm_runtime {int /*<<< orphan*/  hw; } ;
struct snd_dbri {int /*<<< orphan*/  lock; } ;
struct dbri_streaminfo {int pipe; scalar_t__ dvma_buffer; scalar_t__ offset; struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 struct dbri_streaminfo* FUNC0 (struct snd_dbri*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  D_USR ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (struct snd_dbri*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  snd_dbri_pcm_hw ; 
 int /*<<< orphan*/  snd_hw_rule_channels ; 
 int /*<<< orphan*/  snd_hw_rule_format ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct snd_dbri* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_dbri *dbri = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct dbri_streaminfo *info = FUNC0(dbri, substream);
	unsigned long flags;

	FUNC2(D_USR, "open audio output.\n");
	runtime->hw = snd_dbri_pcm_hw;

	FUNC5(&dbri->lock, flags);
	info->substream = substream;
	info->offset = 0;
	info->dvma_buffer = 0;
	info->pipe = -1;
	FUNC6(&dbri->lock, flags);

	FUNC3(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
			    snd_hw_rule_format, NULL, SNDRV_PCM_HW_PARAM_FORMAT,
			    -1);
	FUNC3(runtime, 0, SNDRV_PCM_HW_PARAM_FORMAT,
			    snd_hw_rule_channels, NULL,
			    SNDRV_PCM_HW_PARAM_CHANNELS,
			    -1);

	FUNC1(dbri);

	return 0;
}