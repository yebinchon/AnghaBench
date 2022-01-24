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
struct ssm2602_setup_data {scalar_t__ i2c_address; } ;
struct ssm2602_priv {int dummy; } ;
struct snd_soc_device {TYPE_1__* card; struct ssm2602_setup_data* codec_data; } ;
struct snd_soc_codec {scalar_t__ hw_write; int /*<<< orphan*/  dapm_paths; int /*<<< orphan*/  dapm_widgets; int /*<<< orphan*/  mutex; struct ssm2602_priv* private_data; } ;
struct platform_device {int dummy; } ;
typedef  scalar_t__ hw_write_t ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSM2602_VERSION ; 
 scalar_t__ i2c_master_send ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct snd_soc_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,struct ssm2602_setup_data*) ; 
 struct snd_soc_device* ssm2602_socdev ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC4(pdev);
	struct ssm2602_setup_data *setup;
	struct snd_soc_codec *codec;
	struct ssm2602_priv *ssm2602;
	int ret = 0;

	FUNC5("ssm2602 Audio Codec %s", SSM2602_VERSION);

	setup = socdev->codec_data;
	codec = FUNC2(sizeof(struct snd_soc_codec), GFP_KERNEL);
	if (codec == NULL)
		return -ENOMEM;

	ssm2602 = FUNC2(sizeof(struct ssm2602_priv), GFP_KERNEL);
	if (ssm2602 == NULL) {
		FUNC1(codec);
		return -ENOMEM;
	}

	codec->private_data = ssm2602;
	socdev->card->codec = codec;
	FUNC3(&codec->mutex);
	FUNC0(&codec->dapm_widgets);
	FUNC0(&codec->dapm_paths);

	ssm2602_socdev = socdev;
#if defined(CONFIG_I2C) || defined(CONFIG_I2C_MODULE)
	if (setup->i2c_address) {
		codec->hw_write = (hw_write_t)i2c_master_send;
		ret = ssm2602_add_i2c_device(pdev, setup);
	}
#else
	/* other interfaces */
#endif
	return ret;
}