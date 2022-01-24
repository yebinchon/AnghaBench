#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct wm8750_priv {int /*<<< orphan*/  sysclk; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {struct wm8750_priv* private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_4__ {int sr; int usb; } ;
struct TYPE_3__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
#define  SNDRV_PCM_FORMAT_S16_LE 131 
#define  SNDRV_PCM_FORMAT_S20_3LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 int /*<<< orphan*/  WM8750_IFACE ; 
 int /*<<< orphan*/  WM8750_SRATE ; 
 TYPE_2__* coeff_div ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_device *socdev = rtd->socdev;
	struct snd_soc_codec *codec = socdev->card->codec;
	struct wm8750_priv *wm8750 = codec->private_data;
	u16 iface = FUNC3(codec, WM8750_IFACE) & 0x1f3;
	u16 srate = FUNC3(codec, WM8750_SRATE) & 0x1c0;
	int coeff = FUNC0(wm8750->sysclk, FUNC2(params));

	/* bit size */
	switch (FUNC1(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		iface |= 0x0004;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		iface |= 0x0008;
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		iface |= 0x000c;
		break;
	}

	/* set iface & srate */
	FUNC4(codec, WM8750_IFACE, iface);
	if (coeff >= 0)
		FUNC4(codec, WM8750_SRATE, srate |
			(coeff_div[coeff].sr << 1) | coeff_div[coeff].usb);

	return 0;
}