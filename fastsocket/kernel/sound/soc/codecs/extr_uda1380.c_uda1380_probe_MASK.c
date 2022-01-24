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
struct uda1380_platform_data {int dac_clk; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {TYPE_2__* dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct uda1380_platform_data* platform_data; } ;
struct TYPE_3__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  R00_DAC_CLK ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  UDA1380_CLK ; 
#define  UDA1380_DAC_CLK_SYSCLK 129 
#define  UDA1380_DAC_CLK_WSPLL 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 
 struct snd_soc_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_device*) ; 
 int FUNC6 (struct snd_soc_device*) ; 
 int FUNC7 (struct snd_soc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_codec*) ; 
 struct snd_soc_codec* uda1380_codec ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uda1380_snd_controls ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC2(pdev);
	struct snd_soc_codec *codec;
	struct uda1380_platform_data *pdata;
	int ret = 0;

	if (uda1380_codec == NULL) {
		FUNC1(&pdev->dev, "Codec device not registered\n");
		return -ENODEV;
	}

	socdev->card->codec = uda1380_codec;
	codec = uda1380_codec;
	pdata = codec->dev->platform_data;

	/* register pcms */
	ret = FUNC7(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
	if (ret < 0) {
		FUNC1(codec->dev, "failed to create pcms: %d\n", ret);
		goto pcm_err;
	}

	/* power on device */
	FUNC9(codec, SND_SOC_BIAS_STANDBY);
	/* set clock input */
	switch (pdata->dac_clk) {
	case UDA1380_DAC_CLK_SYSCLK:
		FUNC10(codec, UDA1380_CLK, 0);
		break;
	case UDA1380_DAC_CLK_WSPLL:
		FUNC10(codec, UDA1380_CLK, R00_DAC_CLK);
		break;
	}

	FUNC3(codec, uda1380_snd_controls,
				FUNC0(uda1380_snd_controls));
	FUNC8(codec);
	ret = FUNC6(socdev);
	if (ret < 0) {
		FUNC1(codec->dev, "failed to register card: %d\n", ret);
		goto card_err;
	}

	return ret;

card_err:
	FUNC5(socdev);
	FUNC4(socdev);
pcm_err:
	return ret;
}