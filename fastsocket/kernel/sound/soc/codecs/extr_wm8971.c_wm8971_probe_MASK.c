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
struct wm8971_setup_data {scalar_t__ i2c_address; } ;
struct wm8971_priv {struct wm8971_priv* private_data; int /*<<< orphan*/  delayed_work; int /*<<< orphan*/  dapm_paths; int /*<<< orphan*/  dapm_widgets; int /*<<< orphan*/  mutex; } ;
struct snd_soc_device {TYPE_1__* card; struct wm8971_setup_data* codec_data; } ;
struct snd_soc_codec {struct snd_soc_codec* private_data; int /*<<< orphan*/  delayed_work; int /*<<< orphan*/  dapm_paths; int /*<<< orphan*/  dapm_widgets; int /*<<< orphan*/  mutex; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct wm8971_priv* codec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WM8971_VERSION ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8971_priv*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct snd_soc_device* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct platform_device*,struct wm8971_setup_data*) ; 
 struct snd_soc_device* wm8971_socdev ; 
 int /*<<< orphan*/  wm8971_work ; 
 int /*<<< orphan*/ * wm8971_workq ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC7(pdev);
	struct wm8971_setup_data *setup;
	struct snd_soc_codec *codec;
	struct wm8971_priv *wm8971;
	int ret = 0;

	FUNC8("WM8971 Audio Codec %s", WM8971_VERSION);

	setup = socdev->codec_data;
	codec = FUNC5(sizeof(struct snd_soc_codec), GFP_KERNEL);
	if (codec == NULL)
		return -ENOMEM;

	wm8971 = FUNC5(sizeof(struct wm8971_priv), GFP_KERNEL);
	if (wm8971 == NULL) {
		FUNC4(codec);
		return -ENOMEM;
	}

	codec->private_data = wm8971;
	socdev->card->codec = codec;
	FUNC6(&codec->mutex);
	FUNC1(&codec->dapm_widgets);
	FUNC1(&codec->dapm_paths);
	wm8971_socdev = socdev;

	FUNC0(&codec->delayed_work, wm8971_work);
	wm8971_workq = FUNC2("wm8971");
	if (wm8971_workq == NULL) {
		FUNC4(codec->private_data);
		FUNC4(codec);
		return -ENOMEM;
	}

#if defined (CONFIG_I2C) || defined (CONFIG_I2C_MODULE)
	if (setup->i2c_address) {
		ret = wm8971_add_i2c_device(pdev, setup);
	}
#endif
	/* Add other interfaces here */

	if (ret != 0) {
		FUNC3(wm8971_workq);
		FUNC4(codec->private_data);
		FUNC4(codec);
	}

	return ret;
}