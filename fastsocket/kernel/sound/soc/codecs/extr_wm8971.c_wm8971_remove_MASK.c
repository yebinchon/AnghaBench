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
struct snd_soc_codec {struct snd_soc_codec* private_data; scalar_t__ control_data; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*) ; 
 struct snd_soc_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  wm8971_i2c_driver ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 scalar_t__ wm8971_workq ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC4(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;

	if (codec->control_data)
		FUNC7(codec, SND_SOC_BIAS_OFF);
	if (wm8971_workq)
		FUNC0(wm8971_workq);
	FUNC6(socdev);
	FUNC5(socdev);
#if defined (CONFIG_I2C) || defined (CONFIG_I2C_MODULE)
	i2c_unregister_device(codec->control_data);
	i2c_del_driver(&wm8971_i2c_driver);
#endif
	FUNC3(codec->private_data);
	FUNC3(codec);

	return 0;
}