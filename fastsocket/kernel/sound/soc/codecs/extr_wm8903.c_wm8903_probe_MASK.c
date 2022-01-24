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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct snd_soc_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_device*) ; 
 int FUNC6 (struct snd_soc_device*) ; 
 int FUNC7 (struct snd_soc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ wm8903_codec ; 
 int /*<<< orphan*/  wm8903_snd_controls ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC2(pdev);
	int ret = 0;

	if (!wm8903_codec) {
		FUNC1(&pdev->dev, "I2C device not yet probed\n");
		goto err;
	}

	socdev->card->codec = wm8903_codec;

	/* register pcms */
	ret = FUNC7(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
	if (ret < 0) {
		FUNC1(&pdev->dev, "failed to create pcms\n");
		goto err;
	}

	FUNC3(socdev->card->codec, wm8903_snd_controls,
				FUNC0(wm8903_snd_controls));
	FUNC8(socdev->card->codec);

	ret = FUNC6(socdev);
	if (ret < 0) {
		FUNC1(&pdev->dev, "wm8903: failed to register card\n");
		goto card_err;
	}

	return ret;

card_err:
	FUNC5(socdev);
	FUNC4(socdev);
err:
	return ret;
}