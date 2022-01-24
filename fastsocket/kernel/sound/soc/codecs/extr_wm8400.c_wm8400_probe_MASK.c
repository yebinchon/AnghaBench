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
struct snd_soc_codec {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct snd_soc_device* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_device*) ; 
 int FUNC4 (struct snd_soc_device*) ; 
 int FUNC5 (struct snd_soc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_codec*) ; 
 struct snd_soc_codec* wm8400_codec ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC1(pdev);
	struct snd_soc_codec *codec;
	int ret;

	if (!wm8400_codec) {
		FUNC0(&pdev->dev, "wm8400 not yet discovered\n");
		return -ENODEV;
	}
	codec = wm8400_codec;

	socdev->card->codec = codec;

	/* register pcms */
	ret = FUNC5(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
	if (ret < 0) {
		FUNC0(&pdev->dev, "failed to create pcms\n");
		goto pcm_err;
	}

	FUNC6(codec);
	FUNC7(codec);

	ret = FUNC4(socdev);
	if (ret < 0) {
		FUNC0(&pdev->dev, "failed to register card\n");
		goto card_err;
	}

	return ret;

card_err:
	FUNC3(socdev);
	FUNC2(socdev);
pcm_err:
	return ret;
}