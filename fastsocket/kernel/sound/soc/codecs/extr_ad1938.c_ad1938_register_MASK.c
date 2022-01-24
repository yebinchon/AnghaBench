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
struct snd_soc_codec {char* name; int num_dai; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* write ) (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  dapm_paths; int /*<<< orphan*/  dapm_widgets; int /*<<< orphan*/  set_bias_level; int /*<<< orphan*/  read; TYPE_1__* dai; int /*<<< orphan*/  owner; int /*<<< orphan*/  reg_cache_size; int /*<<< orphan*/  reg_cache; struct ad1938_priv* private_data; int /*<<< orphan*/  mutex; } ;
struct ad1938_priv {int /*<<< orphan*/  reg_cache; struct snd_soc_codec codec; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1938_ADC_CTRL0 ; 
 int /*<<< orphan*/  AD1938_ADC_CTRL1 ; 
 int /*<<< orphan*/  AD1938_DAC_CHNL_MUTE ; 
 int /*<<< orphan*/  AD1938_DAC_CTRL0 ; 
 int /*<<< orphan*/  AD1938_DAC_CTRL2 ; 
 int /*<<< orphan*/  AD1938_NUM_REGS ; 
 int /*<<< orphan*/  AD1938_PLL_CLK_CTRL0 ; 
 int /*<<< orphan*/  AD1938_PLL_CLK_CTRL1 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct snd_soc_codec* ad1938_codec ; 
 TYPE_1__ ad1938_dai ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  ad1938_read_reg_cache ; 
 int /*<<< orphan*/  ad1938_set_bias_level ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ad1938_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct snd_soc_codec*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct ad1938_priv *ad1938)
{
	int ret;
	struct snd_soc_codec *codec = &ad1938->codec;

	if (ad1938_codec) {
		FUNC3(codec->dev, "Another ad1938 is registered\n");
		return -EINVAL;
	}

	FUNC5(&codec->mutex);
	FUNC0(&codec->dapm_widgets);
	FUNC0(&codec->dapm_paths);
	codec->private_data = ad1938;
	codec->reg_cache = ad1938->reg_cache;
	codec->reg_cache_size = AD1938_NUM_REGS;
	codec->name = "AD1938";
	codec->owner = THIS_MODULE;
	codec->dai = &ad1938_dai;
	codec->num_dai = 1;
	codec->write = ad1938_write_reg;
	codec->read = ad1938_read_reg_cache;
	codec->set_bias_level = ad1938_set_bias_level;
	FUNC0(&codec->dapm_widgets);
	FUNC0(&codec->dapm_paths);

	ad1938_dai.dev = codec->dev;
	ad1938_codec = codec;

	/* default setting for ad1938 */

	/* unmute dac channels */
	codec->write(codec, AD1938_DAC_CHNL_MUTE, 0x0);
	/* de-emphasis: 48kHz, powedown dac */
	codec->write(codec, AD1938_DAC_CTRL2, 0x1A);
	/* powerdown dac, dac in tdm mode */
	codec->write(codec, AD1938_DAC_CTRL0, 0x41);
	/* high-pass filter enable */
	codec->write(codec, AD1938_ADC_CTRL0, 0x3);
	/* sata delay=1, adc aux mode */
	codec->write(codec, AD1938_ADC_CTRL1, 0x43);
	/* pll input: mclki/xi */
	codec->write(codec, AD1938_PLL_CLK_CTRL0, 0x9D);
	codec->write(codec, AD1938_PLL_CLK_CTRL1, 0x04);

	FUNC1(codec);

	ret = FUNC6(codec);
	if (ret != 0) {
		FUNC3(codec->dev, "Failed to register codec: %d\n", ret);
		FUNC4(ad1938);
		return ret;
	}

	ret = FUNC7(&ad1938_dai);
	if (ret != 0) {
		FUNC3(codec->dev, "Failed to register DAI: %d\n", ret);
		FUNC8(codec);
		FUNC4(ad1938);
		return ret;
	}

	return 0;
}