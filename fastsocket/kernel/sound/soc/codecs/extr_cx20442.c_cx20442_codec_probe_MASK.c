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
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*) ; 
 struct snd_soc_codec* cx20442_codec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct snd_soc_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_device*) ; 
 int FUNC5 (struct snd_soc_device*) ; 
 int FUNC6 (struct snd_soc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC2(pdev);
	struct snd_soc_codec *codec;
	int ret;

	if (!cx20442_codec) {
		FUNC1(&pdev->dev, "cx20442 not yet discovered\n");
		return -ENODEV;
	}
	codec = cx20442_codec;

	socdev->card->codec = codec;

	/* register pcms */
	ret = FUNC6(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
	if (ret < 0) {
		FUNC1(&pdev->dev, "failed to create pcms\n");
		goto pcm_err;
	}

	FUNC0(codec);

	ret = FUNC5(socdev);
	if (ret < 0) {
		FUNC1(&pdev->dev, "failed to register card\n");
		goto card_err;
	}

	return ret;

card_err:
	FUNC4(socdev);
	FUNC3(socdev);
pcm_err:
	return ret;
}