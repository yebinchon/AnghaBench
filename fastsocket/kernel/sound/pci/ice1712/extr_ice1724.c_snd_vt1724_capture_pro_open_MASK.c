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
struct snd_pcm_runtime {int /*<<< orphan*/  hw; void* private_data; } ;
struct snd_ice1712 {struct snd_pcm_substream* capture_pro_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int /*<<< orphan*/  VT1724_BUFFER_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  snd_vt1724_2ch_stereo ; 
 int /*<<< orphan*/  vt1724_capture_pro_reg ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	runtime->private_data = (void *)&vt1724_capture_pro_reg;
	ice->capture_pro_substream = substream;
	runtime->hw = snd_vt1724_2ch_stereo;
	FUNC3(substream);
	FUNC1(runtime, 0, 32, 24);
	FUNC0(ice, substream);
	FUNC2(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
				   VT1724_BUFFER_ALIGN);
	FUNC2(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
				   VT1724_BUFFER_ALIGN);
	return 0;
}