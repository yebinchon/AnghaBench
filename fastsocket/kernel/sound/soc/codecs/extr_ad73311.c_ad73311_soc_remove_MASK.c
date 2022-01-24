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
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*) ; 
 struct snd_soc_device* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC1(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;

	if (codec == NULL)
		return 0;
	FUNC2(socdev);
	FUNC0(codec);
	return 0;
}