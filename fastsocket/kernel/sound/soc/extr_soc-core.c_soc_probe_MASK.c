#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_soc_device {struct snd_soc_card* card; } ;
struct snd_soc_card {int /*<<< orphan*/ * dev; struct snd_soc_device* socdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct snd_soc_device* FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int ret = 0;
	struct snd_soc_device *socdev = FUNC1(pdev);
	struct snd_soc_card *card = socdev->card;

	/* Bodge while we push things out of socdev */
	card->socdev = socdev;

	/* Bodge while we unpick instantiation */
	card->dev = &pdev->dev;
	ret = FUNC2(card);
	if (ret != 0) {
		FUNC0(&pdev->dev, "Failed to register card\n");
		return ret;
	}

	return 0;
}