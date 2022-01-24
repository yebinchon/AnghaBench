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
typedef  int /*<<< orphan*/  u16 ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
#define  SNDRV_PCM_FORMAT_S16_LE 131 
#define  SNDRV_PCM_FORMAT_S20_3LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 int /*<<< orphan*/  WM8400_AIF_WL_20BITS ; 
 int /*<<< orphan*/  WM8400_AIF_WL_24BITS ; 
 int /*<<< orphan*/  WM8400_AIF_WL_32BITS ; 
 int /*<<< orphan*/  WM8400_AIF_WL_MASK ; 
 int /*<<< orphan*/  WM8400_AUDIO_INTERFACE_1 ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params,
	struct snd_soc_dai *dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_device *socdev = rtd->socdev;
	struct snd_soc_codec *codec = socdev->card->codec;
	u16 audio1 = FUNC1(codec, WM8400_AUDIO_INTERFACE_1);

	audio1 &= ~WM8400_AIF_WL_MASK;
	/* bit size */
	switch (FUNC0(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		audio1 |= WM8400_AIF_WL_20BITS;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		audio1 |= WM8400_AIF_WL_24BITS;
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		audio1 |= WM8400_AIF_WL_32BITS;
		break;
	}

	FUNC2(codec, WM8400_AUDIO_INTERFACE_1, audio1);
	return 0;
}