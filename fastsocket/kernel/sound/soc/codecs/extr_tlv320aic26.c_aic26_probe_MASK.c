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
struct snd_soc_device {int /*<<< orphan*/  dev; TYPE_1__* card; struct aic26* codec_data; } ;
struct snd_soc_codec {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct aic26 {struct snd_soc_codec codec; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  aic26_snd_controls ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct snd_soc_device* FUNC5 (struct platform_device*) ; 
 int FUNC6 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_device*) ; 
 int FUNC8 (struct snd_soc_device*) ; 
 int FUNC9 (struct snd_soc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC5(pdev);
	struct snd_soc_codec *codec;
	struct aic26 *aic26;
	int ret, err;

	FUNC4(&pdev->dev, "Probing AIC26 SoC CODEC driver\n");
	FUNC2(&pdev->dev, "socdev=%p\n", socdev);
	FUNC2(&pdev->dev, "codec_data=%p\n", socdev->codec_data);

	/* Fetch the relevant aic26 private data here (it's already been
	 * stored in the .codec pointer) */
	aic26 = socdev->codec_data;
	if (aic26 == NULL) {
		FUNC3(&pdev->dev, "aic26: missing codec pointer\n");
		return -ENODEV;
	}
	codec = &aic26->codec;
	socdev->card->codec = codec;

	FUNC2(&pdev->dev, "Registering PCMs, dev=%p, socdev->dev=%p\n",
		&pdev->dev, socdev->dev);
	/* register pcms */
	ret = FUNC9(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
	if (ret < 0) {
		FUNC3(&pdev->dev, "aic26: failed to create pcms\n");
		return -ENODEV;
	}

	/* register controls */
	FUNC2(&pdev->dev, "Registering controls\n");
	err = FUNC6(codec, aic26_snd_controls,
			FUNC0(aic26_snd_controls));
	FUNC1(err < 0);

	/* CODEC is setup, we can register the card now */
	FUNC2(&pdev->dev, "Registering card\n");
	ret = FUNC8(socdev);
	if (ret < 0) {
		FUNC3(&pdev->dev, "aic26: failed to register card\n");
		goto card_err;
	}
	return 0;

 card_err:
	FUNC7(socdev);
	return ret;
}