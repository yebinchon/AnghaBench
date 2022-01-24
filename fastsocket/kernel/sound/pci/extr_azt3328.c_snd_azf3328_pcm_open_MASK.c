#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; } ;
struct snd_azf3328 {TYPE_1__* codecs; } ;
typedef  enum snd_azf3328_codec_type { ____Placeholder_snd_azf3328_codec_type } snd_azf3328_codec_type ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  snd_azf3328_hardware ; 
 int /*<<< orphan*/  snd_azf3328_hw_constraints_rates ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct snd_azf3328* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int
FUNC4(struct snd_pcm_substream *substream,
		     enum snd_azf3328_codec_type codec_type
)
{
	struct snd_azf3328 *chip = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC0();
	chip->codecs[codec_type].substream = substream;

	/* same parameters for all our codecs - at least we think so... */
	runtime->hw = snd_azf3328_hardware;

	FUNC2(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				   &snd_azf3328_hw_constraints_rates);
	FUNC1();
	return 0;
}