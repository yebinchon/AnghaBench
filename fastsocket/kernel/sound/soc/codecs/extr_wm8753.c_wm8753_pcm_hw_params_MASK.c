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
typedef  int u16 ;
struct wm8753_priv {int pcmclk; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {struct wm8753_priv* private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
#define  SNDRV_PCM_FORMAT_S16_LE 131 
#define  SNDRV_PCM_FORMAT_S20_3LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 int /*<<< orphan*/  WM8753_PCM ; 
 int /*<<< orphan*/  WM8753_SRATE1 ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_device *socdev = rtd->socdev;
	struct snd_soc_codec *codec = socdev->card->codec;
	struct wm8753_priv *wm8753 = codec->private_data;
	u16 voice = FUNC2(codec, WM8753_PCM) & 0x01f3;
	u16 srate = FUNC2(codec, WM8753_SRATE1) & 0x017f;

	/* bit size */
	switch (FUNC0(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		voice |= 0x0004;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		voice |= 0x0008;
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		voice |= 0x000c;
		break;
	}

	/* sample rate */
	if (FUNC1(params) * 384 == wm8753->pcmclk)
		srate |= 0x80;
	FUNC3(codec, WM8753_SRATE1, srate);

	FUNC3(codec, WM8753_PCM, voice);
	return 0;
}