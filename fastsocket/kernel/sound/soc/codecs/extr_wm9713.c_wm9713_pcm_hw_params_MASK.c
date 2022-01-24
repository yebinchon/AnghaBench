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
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CENTER_LFE_MASTER ; 
#define  SNDRV_PCM_FORMAT_S16_LE 131 
#define  SNDRV_PCM_FORMAT_S20_3LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct snd_soc_codec *codec = dai->codec;
	u16 reg = FUNC0(codec, AC97_CENTER_LFE_MASTER) & 0xfff3;

	switch (FUNC2(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		reg |= 0x0004;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		reg |= 0x0008;
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		reg |= 0x000c;
		break;
	}

	/* enable PCM interface in master mode */
	FUNC1(codec, AC97_CENTER_LFE_MASTER, reg);
	return 0;
}