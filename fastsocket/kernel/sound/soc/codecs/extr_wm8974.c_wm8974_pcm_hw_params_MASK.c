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
#define  SNDRV_PCM_FORMAT_S16_LE 131 
#define  SNDRV_PCM_FORMAT_S20_3LE 130 
#define  SNDRV_PCM_FORMAT_S24_LE 129 
#define  SNDRV_PCM_FORMAT_S32_LE 128 
 int /*<<< orphan*/  WM8974_ADD ; 
 int /*<<< orphan*/  WM8974_IFACE ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct snd_soc_codec *codec = dai->codec;
	u16 iface = FUNC2(codec, WM8974_IFACE) & 0x19f;
	u16 adn = FUNC2(codec, WM8974_ADD) & 0x1f1;

	/* bit size */
	switch (FUNC0(params)) {
	case SNDRV_PCM_FORMAT_S16_LE:
		break;
	case SNDRV_PCM_FORMAT_S20_3LE:
		iface |= 0x0020;
		break;
	case SNDRV_PCM_FORMAT_S24_LE:
		iface |= 0x0040;
		break;
	case SNDRV_PCM_FORMAT_S32_LE:
		iface |= 0x0060;
		break;
	}

	/* filter coefficient */
	switch (FUNC1(params)) {
	case 8000:
		adn |= 0x5 << 1;
		break;
	case 11025:
		adn |= 0x4 << 1;
		break;
	case 16000:
		adn |= 0x3 << 1;
		break;
	case 22050:
		adn |= 0x2 << 1;
		break;
	case 32000:
		adn |= 0x1 << 1;
		break;
	case 44100:
	case 48000:
		break;
	}

	FUNC3(codec, WM8974_IFACE, iface);
	FUNC3(codec, WM8974_ADD, adn);
	return 0;
}