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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*) ; 
 struct snd_soc_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_device*) ; 
 int /*<<< orphan*/  ssm2602_i2c_driver ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC3(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;

	if (codec->control_data)
		FUNC6(codec, SND_SOC_BIAS_OFF);

	FUNC5(socdev);
	FUNC4(socdev);
#if defined(CONFIG_I2C) || defined(CONFIG_I2C_MODULE)
	i2c_unregister_device(codec->control_data);
	i2c_del_driver(&ssm2602_i2c_driver);
#endif
	FUNC2(codec->private_data);
	FUNC2(codec);

	return 0;
}