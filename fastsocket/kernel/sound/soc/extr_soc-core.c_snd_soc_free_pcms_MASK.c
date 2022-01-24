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
struct snd_soc_device {int /*<<< orphan*/  dev; TYPE_1__* card; } ;
struct snd_soc_dai {scalar_t__ ac97_control; } ;
struct snd_soc_codec {int num_dai; int /*<<< orphan*/  mutex; scalar_t__ card; int /*<<< orphan*/  name; scalar_t__ ac97; struct snd_soc_dai* dai; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_codec_reg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 

void FUNC7(struct snd_soc_device *socdev)
{
	struct snd_soc_codec *codec = socdev->card->codec;
#ifdef CONFIG_SND_SOC_AC97_BUS
	struct snd_soc_dai *codec_dai;
	int i;
#endif

	FUNC1(&codec->mutex);
	FUNC5(codec);
#ifdef CONFIG_SND_SOC_AC97_BUS
	for (i = 0; i < codec->num_dai; i++) {
		codec_dai = &codec->dai[i];
		if (codec_dai->ac97_control && codec->ac97 &&
		    strcmp(codec->name, "AC97") != 0) {
			soc_ac97_dev_unregister(codec);
			goto free_card;
		}
	}
free_card:
#endif

	if (codec->card)
		FUNC3(codec->card);
	FUNC0(socdev->dev, &dev_attr_codec_reg);
	FUNC2(&codec->mutex);
}