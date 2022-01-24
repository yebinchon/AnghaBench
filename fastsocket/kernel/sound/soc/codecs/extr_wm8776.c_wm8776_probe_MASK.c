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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct snd_soc_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  routes ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_device*) ; 
 int FUNC8 (struct snd_soc_device*) ; 
 int FUNC9 (struct snd_soc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_codec* wm8776_codec ; 
 int /*<<< orphan*/  wm8776_dapm_widgets ; 
 int /*<<< orphan*/  wm8776_snd_controls ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC2(pdev);
	struct snd_soc_codec *codec;
	int ret = 0;

	if (wm8776_codec == NULL) {
		FUNC1(pdev->dev, "Codec device not registered\n");
		return -ENODEV;
	}

	socdev->card->codec = wm8776_codec;
	codec = wm8776_codec;

	/* register pcms */
	ret = FUNC9(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
	if (ret < 0) {
		FUNC1(codec->dev, "failed to create pcms: %d\n", ret);
		goto pcm_err;
	}

	FUNC3(codec, wm8776_snd_controls,
			     FUNC0(wm8776_snd_controls));
	FUNC6(codec, wm8776_dapm_widgets,
				  FUNC0(wm8776_dapm_widgets));
	FUNC4(codec, routes, FUNC0(routes));

	ret = FUNC8(socdev);
	if (ret < 0) {
		FUNC1(codec->dev, "failed to register card: %d\n", ret);
		goto card_err;
	}

	return ret;

card_err:
	FUNC7(socdev);
	FUNC5(socdev);
pcm_err:
	return ret;
}