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
struct snd_soc_platform {int /*<<< orphan*/  (* remove ) (struct platform_device*) ;} ;
struct snd_soc_device {struct snd_soc_codec_device* codec_dev; struct snd_soc_card* card; } ;
struct snd_soc_dai {int /*<<< orphan*/  (* remove ) (struct platform_device*,struct snd_soc_dai*) ;} ;
struct snd_soc_codec_device {int /*<<< orphan*/  (* remove ) (struct platform_device*) ;} ;
struct snd_soc_card {int num_links; int /*<<< orphan*/  (* remove ) (struct platform_device*) ;TYPE_1__* dai_link; int /*<<< orphan*/  delayed_work; int /*<<< orphan*/  instantiated; struct snd_soc_platform* platform; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; } ;

/* Variables and functions */
 struct snd_soc_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int i;
	struct snd_soc_device *socdev = FUNC0(pdev);
	struct snd_soc_card *card = socdev->card;
	struct snd_soc_platform *platform = card->platform;
	struct snd_soc_codec_device *codec_dev = socdev->codec_dev;

	if (!card->instantiated)
		return 0;

	FUNC1(&card->delayed_work);

	if (platform->remove)
		platform->remove(pdev);

	if (codec_dev->remove)
		codec_dev->remove(pdev);

	for (i = 0; i < card->num_links; i++) {
		struct snd_soc_dai *cpu_dai = card->dai_link[i].cpu_dai;
		if (cpu_dai->remove)
			cpu_dai->remove(pdev, cpu_dai);
	}

	if (card->remove)
		card->remove(pdev);

	FUNC2(card);

	return 0;
}