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
typedef  int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_STATUS ; 
 int /*<<< orphan*/  AC97_PCI_SID ; 
 int /*<<< orphan*/  AC97_PCM_SURR_DAC_RATE ; 
 int ENODEV ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_codec *codec = dai->codec;
	struct snd_pcm_runtime *runtime = substream->runtime;
	u16 vra, xsle;

	vra = FUNC0(codec, AC97_EXTENDED_STATUS);
	FUNC1(codec, AC97_EXTENDED_STATUS, vra | 0x1);
	xsle = FUNC0(codec, AC97_PCI_SID);
	FUNC1(codec, AC97_PCI_SID, xsle | 0x8000);

	if (substream->stream != SNDRV_PCM_STREAM_PLAYBACK)
		return -ENODEV;

	return FUNC1(codec, AC97_PCM_SURR_DAC_RATE, runtime->rate);
}