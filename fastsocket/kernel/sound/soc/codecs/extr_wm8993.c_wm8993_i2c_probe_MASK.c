#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int jd_scthr; int jd_thr; int micbias1_lvl; scalar_t__ lineout2fb; scalar_t__ lineout1fb; int /*<<< orphan*/  lineout2_diff; int /*<<< orphan*/  lineout1_diff; } ;
struct snd_soc_codec {char* name; int (* write ) (struct snd_soc_codec*,size_t,int) ;int (* set_bias_level ) (struct snd_soc_codec*,int /*<<< orphan*/ ) ;int num_dai; TYPE_4__* dev; struct i2c_client* control_data; struct wm8993_priv* private_data; TYPE_1__* dai; int /*<<< orphan*/  bias_level; int /*<<< orphan*/  reg_cache_size; TYPE_3__* reg_cache; scalar_t__ hw_write; int /*<<< orphan*/  read; int /*<<< orphan*/  dapm_paths; int /*<<< orphan*/  dapm_widgets; int /*<<< orphan*/  mutex; } ;
struct wm8993_priv {int class_w_users; TYPE_3__ pdata; TYPE_3__* reg_cache; struct snd_soc_codec codec; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_8__ {unsigned int* platform_data; } ;
struct i2c_client {TYPE_4__ dev; } ;
typedef  scalar_t__ hw_write_t ;
struct TYPE_6__ {TYPE_4__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int WM8993_ADC_VU ; 
 int /*<<< orphan*/  WM8993_ADDITIONAL_CONTROL ; 
 int /*<<< orphan*/  WM8993_ANALOGUE_HP_0 ; 
 int /*<<< orphan*/  WM8993_CLOCKING_4 ; 
 int WM8993_DAC_VU ; 
 int WM8993_HPOUT1_AUTO_PU ; 
 int WM8993_JD_SCTHR_MASK ; 
 int WM8993_JD_SCTHR_SHIFT ; 
 int WM8993_JD_THR_MASK ; 
 int WM8993_JD_THR_SHIFT ; 
 int WM8993_LINEOUT1_FB ; 
 int WM8993_LINEOUT1_MODE ; 
 int WM8993_LINEOUT2_FB ; 
 int WM8993_LINEOUT2_MODE ; 
 int /*<<< orphan*/  WM8993_LINE_MIXER1 ; 
 int /*<<< orphan*/  WM8993_LINE_MIXER2 ; 
 int WM8993_MICB1_LVL ; 
 int WM8993_MICB2_LVL ; 
 int /*<<< orphan*/  WM8993_MICBIAS ; 
 int /*<<< orphan*/  WM8993_RIGHT_ADC_DIGITAL_VOLUME ; 
 int /*<<< orphan*/  WM8993_RIGHT_DAC_DIGITAL_VOLUME ; 
 size_t WM8993_SOFTWARE_RESET ; 
 int WM8993_SR_MODE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 scalar_t__ i2c_master_send ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct wm8993_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8993_priv*) ; 
 struct wm8993_priv* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct snd_soc_codec*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_codec*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_codec* wm8993_codec ; 
 TYPE_1__ wm8993_dai ; 
 int /*<<< orphan*/  wm8993_read ; 
 unsigned int FUNC11 (struct snd_soc_codec*,size_t) ; 
 unsigned int* wm8993_reg_defaults ; 
 int FUNC12 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct snd_soc_codec*,size_t,int) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct wm8993_priv *wm8993;
	struct snd_soc_codec *codec;
	unsigned int val;
	int ret;

	if (wm8993_codec) {
		FUNC2(&i2c->dev, "A WM8993 is already registered\n");
		return -EINVAL;
	}

	wm8993 = FUNC5(sizeof(struct wm8993_priv), GFP_KERNEL);
	if (wm8993 == NULL)
		return -ENOMEM;

	codec = &wm8993->codec;
	if (i2c->dev.platform_data)
		FUNC6(&wm8993->pdata, i2c->dev.platform_data,
		       sizeof(wm8993->pdata));

	FUNC7(&codec->mutex);
	FUNC1(&codec->dapm_widgets);
	FUNC1(&codec->dapm_paths);

	codec->name = "WM8993";
	codec->read = wm8993_read;
	codec->write = wm8993_write;
	codec->hw_write = (hw_write_t)i2c_master_send;
	codec->reg_cache = wm8993->reg_cache;
	codec->reg_cache_size = FUNC0(wm8993->reg_cache);
	codec->bias_level = SND_SOC_BIAS_OFF;
	codec->set_bias_level = wm8993_set_bias_level;
	codec->dai = &wm8993_dai;
	codec->num_dai = 1;
	codec->private_data = wm8993;

	FUNC6(wm8993->reg_cache, wm8993_reg_defaults,
	       sizeof(wm8993->reg_cache));

	FUNC3(i2c, wm8993);
	codec->control_data = i2c;
	wm8993_codec = codec;

	codec->dev = &i2c->dev;

	val = FUNC11(codec, WM8993_SOFTWARE_RESET);
	if (val != wm8993_reg_defaults[WM8993_SOFTWARE_RESET]) {
		FUNC2(codec->dev, "Invalid ID register value %x\n", val);
		ret = -EINVAL;
		goto err;
	}

	ret = FUNC13(codec, WM8993_SOFTWARE_RESET, 0xffff);
	if (ret != 0)
		goto err;

	/* By default we're using the output mixers */
	wm8993->class_w_users = 2;

	/* Latch volume update bits and default ZC on */
	FUNC10(codec, WM8993_RIGHT_DAC_DIGITAL_VOLUME,
			    WM8993_DAC_VU, WM8993_DAC_VU);
	FUNC10(codec, WM8993_RIGHT_ADC_DIGITAL_VOLUME,
			    WM8993_ADC_VU, WM8993_ADC_VU);

	/* Manualy manage the HPOUT sequencing for independent stereo
	 * control. */
	FUNC10(codec, WM8993_ANALOGUE_HP_0,
			    WM8993_HPOUT1_AUTO_PU, 0);

	/* Use automatic clock configuration */
	FUNC10(codec, WM8993_CLOCKING_4, WM8993_SR_MODE, 0);

	if (!wm8993->pdata.lineout1_diff)
		FUNC10(codec, WM8993_LINE_MIXER1,
				    WM8993_LINEOUT1_MODE,
				    WM8993_LINEOUT1_MODE);
	if (!wm8993->pdata.lineout2_diff)
		FUNC10(codec, WM8993_LINE_MIXER2,
				    WM8993_LINEOUT2_MODE,
				    WM8993_LINEOUT2_MODE);

	if (wm8993->pdata.lineout1fb)
		FUNC10(codec, WM8993_ADDITIONAL_CONTROL,
				    WM8993_LINEOUT1_FB, WM8993_LINEOUT1_FB);

	if (wm8993->pdata.lineout2fb)
		FUNC10(codec, WM8993_ADDITIONAL_CONTROL,
				    WM8993_LINEOUT2_FB, WM8993_LINEOUT2_FB);

	/* Apply the microphone bias/detection configuration - the
	 * platform data is directly applicable to the register. */
	FUNC10(codec, WM8993_MICBIAS,
			    WM8993_JD_SCTHR_MASK | WM8993_JD_THR_MASK |
			    WM8993_MICB1_LVL | WM8993_MICB2_LVL,
			    wm8993->pdata.jd_scthr << WM8993_JD_SCTHR_SHIFT |
			    wm8993->pdata.jd_thr << WM8993_JD_THR_SHIFT |
			    wm8993->pdata.micbias1_lvl |
			    wm8993->pdata.micbias1_lvl << 1);

	ret = FUNC12(codec, SND_SOC_BIAS_STANDBY);
	if (ret != 0)
		goto err;

	wm8993_dai.dev = codec->dev;

	ret = FUNC9(&wm8993_dai);
	if (ret != 0)
		goto err_bias;

	ret = FUNC8(codec);

	return 0;

err_bias:
	FUNC12(codec, SND_SOC_BIAS_OFF);
err:
	wm8993_codec = NULL;
	FUNC4(wm8993);
	return ret;
}