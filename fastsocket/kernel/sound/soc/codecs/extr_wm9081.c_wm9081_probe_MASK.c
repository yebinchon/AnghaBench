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
struct wm9081_priv {int /*<<< orphan*/  retune; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int /*<<< orphan*/  dev; struct wm9081_priv* private_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  audio_paths ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
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
 struct snd_soc_codec* wm9081_codec ; 
 int /*<<< orphan*/  wm9081_dapm_widgets ; 
 int /*<<< orphan*/  wm9081_eq_controls ; 
 int /*<<< orphan*/  wm9081_snd_controls ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC3(pdev);
	struct snd_soc_codec *codec;
	struct wm9081_priv *wm9081;
	int ret = 0;

	if (wm9081_codec == NULL) {
		FUNC2(pdev->dev, "Codec device not registered\n");
		return -ENODEV;
	}

	socdev->card->codec = wm9081_codec;
	codec = wm9081_codec;
	wm9081 = codec->private_data;

	/* register pcms */
	ret = FUNC11(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
	if (ret < 0) {
		FUNC2(codec->dev, "failed to create pcms: %d\n", ret);
		goto pcm_err;
	}

	FUNC4(codec, wm9081_snd_controls,
			     FUNC0(wm9081_snd_controls));
	if (!wm9081->retune) {
		FUNC1(codec->dev,
			"No ReTune Mobile data, using normal EQ\n");
		FUNC4(codec, wm9081_eq_controls,
				     FUNC0(wm9081_eq_controls));
	}

	FUNC7(codec, wm9081_dapm_widgets,
				  FUNC0(wm9081_dapm_widgets));
	FUNC5(codec, audio_paths, FUNC0(audio_paths));
	FUNC8(codec);

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