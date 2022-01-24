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
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_IDX1 ; 
 int /*<<< orphan*/  SNDRV_DEFAULT_STR1 ; 
 struct snd_soc_codec* cs4270_codec ; 
 int /*<<< orphan*/  cs4270_snd_controls ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct snd_soc_device* FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_device*) ; 
 int FUNC5 (struct snd_soc_device*) ; 
 int FUNC6 (struct snd_soc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC2(pdev);
	struct snd_soc_codec *codec = cs4270_codec;
	int ret;

	/* Connect the codec to the socdev.  snd_soc_new_pcms() needs this. */
	socdev->card->codec = codec;

	/* Register PCMs */
	ret = FUNC6(socdev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1);
	if (ret < 0) {
		FUNC1(codec->dev, "failed to create pcms\n");
		return ret;
	}

	/* Add the non-DAPM controls */
	ret = FUNC3(codec, cs4270_snd_controls,
				FUNC0(cs4270_snd_controls));
	if (ret < 0) {
		FUNC1(codec->dev, "failed to add controls\n");
		goto error_free_pcms;
	}

	/* And finally, register the socdev */
	ret = FUNC5(socdev);
	if (ret < 0) {
		FUNC1(codec->dev, "failed to register card\n");
		goto error_free_pcms;
	}

	return 0;

error_free_pcms:
	FUNC4(socdev);

	return ret;
}