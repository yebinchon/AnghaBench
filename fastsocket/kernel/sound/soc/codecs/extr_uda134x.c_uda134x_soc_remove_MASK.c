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
struct snd_soc_codec {struct snd_soc_codec* reg_cache; struct snd_soc_codec* private_data; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*) ; 
 struct snd_soc_device* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC1(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;

	FUNC4(codec, SND_SOC_BIAS_STANDBY);
	FUNC4(codec, SND_SOC_BIAS_OFF);

	FUNC3(socdev);
	FUNC2(socdev);

	FUNC0(codec->private_data);
	FUNC0(codec->reg_cache);
	FUNC0(codec);

	return 0;
}