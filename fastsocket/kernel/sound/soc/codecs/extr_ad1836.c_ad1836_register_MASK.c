#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_codec {char* name; int num_dai; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* write ) (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  dapm_paths; int /*<<< orphan*/  dapm_widgets; int /*<<< orphan*/  read; TYPE_1__* dai; int /*<<< orphan*/  owner; int /*<<< orphan*/  reg_cache_size; int /*<<< orphan*/  reg_cache; struct ad1836_priv* private_data; int /*<<< orphan*/  mutex; } ;
struct ad1836_priv {int /*<<< orphan*/  reg_cache; struct snd_soc_codec codec; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1836_ADC_CTRL1 ; 
 int /*<<< orphan*/  AD1836_ADC_CTRL2 ; 
 int /*<<< orphan*/  AD1836_ADC_CTRL3 ; 
 int /*<<< orphan*/  AD1836_DAC_CTRL1 ; 
 int /*<<< orphan*/  AD1836_DAC_CTRL2 ; 
 int /*<<< orphan*/  AD1836_DAC_L1_VOL ; 
 int /*<<< orphan*/  AD1836_DAC_L2_VOL ; 
 int /*<<< orphan*/  AD1836_DAC_L3_VOL ; 
 int /*<<< orphan*/  AD1836_DAC_R1_VOL ; 
 int /*<<< orphan*/  AD1836_DAC_R2_VOL ; 
 int /*<<< orphan*/  AD1836_DAC_R3_VOL ; 
 int /*<<< orphan*/  AD1836_NUM_REGS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct snd_soc_codec* ad1836_codec ; 
 TYPE_1__ ad1836_dai ; 
 int /*<<< orphan*/  ad1836_read_reg_cache ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ad1836_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct snd_soc_codec*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(struct ad1836_priv *ad1836)
{
	int ret;
	struct snd_soc_codec *codec = &ad1836->codec;

	if (ad1836_codec) {
		FUNC2(codec->dev, "Another ad1836 is registered\n");
		return -EINVAL;
	}

	FUNC4(&codec->mutex);
	FUNC0(&codec->dapm_widgets);
	FUNC0(&codec->dapm_paths);
	codec->private_data = ad1836;
	codec->reg_cache = ad1836->reg_cache;
	codec->reg_cache_size = AD1836_NUM_REGS;
	codec->name = "AD1836";
	codec->owner = THIS_MODULE;
	codec->dai = &ad1836_dai;
	codec->num_dai = 1;
	codec->write = ad1836_write_reg;
	codec->read = ad1836_read_reg_cache;
	FUNC0(&codec->dapm_widgets);
	FUNC0(&codec->dapm_paths);

	ad1836_dai.dev = codec->dev;
	ad1836_codec = codec;

	/* default setting for ad1836 */
	/* de-emphasis: 48kHz, power-on dac */
	codec->write(codec, AD1836_DAC_CTRL1, 0x300);
	/* unmute dac channels */
	codec->write(codec, AD1836_DAC_CTRL2, 0x0);
	/* high-pass filter enable, power-on adc */
	codec->write(codec, AD1836_ADC_CTRL1, 0x100);
	/* unmute adc channles, adc aux mode */
	codec->write(codec, AD1836_ADC_CTRL2, 0x180);
	/* left/right diff:PGA/MUX */
	codec->write(codec, AD1836_ADC_CTRL3, 0x3A);
	/* volume */
	codec->write(codec, AD1836_DAC_L1_VOL, 0x3FF);
	codec->write(codec, AD1836_DAC_R1_VOL, 0x3FF);
	codec->write(codec, AD1836_DAC_L2_VOL, 0x3FF);
	codec->write(codec, AD1836_DAC_R2_VOL, 0x3FF);
	codec->write(codec, AD1836_DAC_L3_VOL, 0x3FF);
	codec->write(codec, AD1836_DAC_R3_VOL, 0x3FF);

	ret = FUNC5(codec);
	if (ret != 0) {
		FUNC2(codec->dev, "Failed to register codec: %d\n", ret);
		FUNC3(ad1836);
		return ret;
	}

	ret = FUNC6(&ad1836_dai);
	if (ret != 0) {
		FUNC2(codec->dev, "Failed to register DAI: %d\n", ret);
		FUNC7(codec);
		FUNC3(ad1836);
		return ret;
	}

	return 0;
}