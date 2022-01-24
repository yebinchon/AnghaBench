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
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int /*<<< orphan*/  dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 struct snd_soc_codec* ad1938_codec ; 
 int /*<<< orphan*/  ad1938_dapm_widgets ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad1938_snd_controls ; 
 int /*<<< orphan*/  audio_paths ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct snd_soc_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_device*) ; 
 int FUNC10 (struct snd_soc_device*) ; 
 int FUNC11 (struct snd_soc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC3(pdev);
	struct snd_soc_codec *codec;
	int ret = 0;

	if (ad1938_codec == NULL) {
		FUNC2(pdev->dev, "Codec device not registered\n");
		return -ENODEV;
	}

	socdev->card->codec = ad1938_codec;
	codec = ad1938_codec;

	/* register pcms */
	ret = FUNC11(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
	if (ret < 0) {
		FUNC2(codec->dev, "failed to create pcms: %d\n", ret);
		goto pcm_err;
	}

	FUNC4(codec, ad1938_snd_controls,
			     FUNC0(ad1938_snd_controls));
	FUNC7(codec, ad1938_dapm_widgets,
				  FUNC0(ad1938_dapm_widgets));
	FUNC5(codec, audio_paths, FUNC0(audio_paths));
	FUNC8(codec);

	FUNC1(codec, SND_SOC_BIAS_STANDBY);

	ret = FUNC10(socdev);
	if (ret < 0) {
		FUNC2(codec->dev, "failed to register card: %d\n", ret);
		goto card_err;
	}

	return ret;

card_err:
	FUNC9(socdev);
	FUNC6(socdev);
pcm_err:
	return ret;
}