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
struct snd_soc_card {int /*<<< orphan*/  delayed_work; int /*<<< orphan*/  instantiated; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct snd_soc_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_device*) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct platform_device *pdev = FUNC3(dev);
	struct snd_soc_device *socdev = FUNC0(pdev);
	struct snd_soc_card *card = socdev->card;

	if (!card->instantiated)
		return 0;

	/* Flush out pmdown_time work - we actually do want to run it
	 * now, we're shutting down so no imminent restart. */
	FUNC1(&card->delayed_work);

	FUNC2(socdev);

	return 0;
}