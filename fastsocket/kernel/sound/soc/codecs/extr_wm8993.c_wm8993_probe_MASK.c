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
struct TYPE_4__ {scalar_t__ num_retune_configs; int /*<<< orphan*/  lineout2_diff; int /*<<< orphan*/  lineout1_diff; } ;
struct wm8993_priv {TYPE_2__ pdata; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int /*<<< orphan*/ * dev; struct wm8993_priv* private_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {void* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct snd_soc_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  routes ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_device*) ; 
 int FUNC10 (struct snd_soc_device*) ; 
 int FUNC11 (struct snd_soc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* wm8993_codec ; 
 int /*<<< orphan*/  wm8993_dapm_widgets ; 
 int /*<<< orphan*/  wm8993_eq_controls ; 
 int /*<<< orphan*/  wm8993_snd_controls ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC3(pdev);
	struct snd_soc_codec *codec;
	struct wm8993_priv *wm8993;
	int ret = 0;

	if (!wm8993_codec) {
		FUNC2(&pdev->dev, "I2C device not yet probed\n");
		goto err;
	}

	socdev->card->codec = wm8993_codec;
	codec = wm8993_codec;
	wm8993 = codec->private_data;

	ret = FUNC11(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
	if (ret < 0) {
		FUNC2(codec->dev, "failed to create pcms\n");
		goto err;
	}

	FUNC4(codec, wm8993_snd_controls,
			     FUNC0(wm8993_snd_controls));
	if (wm8993->pdata.num_retune_configs != 0) {
		FUNC1(codec->dev, "Using ReTune Mobile\n");
	} else {
		FUNC1(codec->dev, "No ReTune Mobile, using normal EQ\n");
		FUNC4(codec, wm8993_eq_controls,
				     FUNC0(wm8993_eq_controls));
	}

	FUNC7(codec, wm8993_dapm_widgets,
				  FUNC0(wm8993_dapm_widgets));
	FUNC12(codec);

	FUNC5(codec, routes, FUNC0(routes));
	FUNC13(codec, wm8993->pdata.lineout1_diff,
				    wm8993->pdata.lineout2_diff);

	FUNC8(codec);

	ret = FUNC10(socdev);
	if (ret < 0) {
		FUNC2(codec->dev, "failed to register card\n");
		goto card_err;
	}

	return ret;

card_err:
	FUNC9(socdev);
	FUNC6(socdev);
err:
	return ret;
}