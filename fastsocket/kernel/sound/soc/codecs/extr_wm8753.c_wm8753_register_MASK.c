#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct snd_soc_codec {char* name; int (* read ) (struct snd_soc_codec*,int /*<<< orphan*/ ) ;int num_dai; int reg_cache_size; int /*<<< orphan*/  delayed_work; int /*<<< orphan*/  dev; TYPE_1__** reg_cache; struct wm8753_priv* private_data; TYPE_1__* dai; int /*<<< orphan*/  (* set_bias_level ) (struct snd_soc_codec*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  bias_level; int /*<<< orphan*/  (* write ) (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  owner; int /*<<< orphan*/  dapm_paths; int /*<<< orphan*/  dapm_widgets; int /*<<< orphan*/  mutex; } ;
struct wm8753_priv {TYPE_1__* reg_cache; struct snd_soc_codec codec; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SND_SOC_BIAS_PREPARE ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  WM8753_LADC ; 
 int /*<<< orphan*/  WM8753_LDAC ; 
 int /*<<< orphan*/  WM8753_LINVOL ; 
 int /*<<< orphan*/  WM8753_LOUT1V ; 
 int /*<<< orphan*/  WM8753_LOUT2V ; 
 int /*<<< orphan*/  WM8753_RADC ; 
 int /*<<< orphan*/  WM8753_RDAC ; 
 int /*<<< orphan*/  WM8753_RINVOL ; 
 int /*<<< orphan*/  WM8753_ROUT1V ; 
 int /*<<< orphan*/  WM8753_ROUT2V ; 
 int /*<<< orphan*/  caps_charge ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8753_priv*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct snd_soc_codec*) ; 
 int FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_codec*) ; 
 struct snd_soc_codec* wm8753_codec ; 
 TYPE_1__* wm8753_dai ; 
 int FUNC13 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm8753_reg ; 
 int FUNC14 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm8753_work ; 
 int /*<<< orphan*/  FUNC16 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct wm8753_priv *wm8753)
{
	int ret, i;
	struct snd_soc_codec *codec = &wm8753->codec;
	u16 reg;

	if (wm8753_codec) {
		FUNC3(codec->dev, "Multiple WM8753 devices not supported\n");
		ret = -EINVAL;
		goto err;
	}

	FUNC7(&codec->mutex);
	FUNC2(&codec->dapm_widgets);
	FUNC2(&codec->dapm_paths);

	codec->name = "WM8753";
	codec->owner = THIS_MODULE;
	codec->read = wm8753_read_reg_cache;
	codec->write = wm8753_write;
	codec->bias_level = SND_SOC_BIAS_STANDBY;
	codec->set_bias_level = wm8753_set_bias_level;
	codec->dai = wm8753_dai;
	codec->num_dai = 2;
	codec->reg_cache_size = FUNC0(wm8753->reg_cache) + 1;
	codec->reg_cache = &wm8753->reg_cache;
	codec->private_data = wm8753;

	FUNC5(codec->reg_cache, wm8753_reg, sizeof(wm8753->reg_cache));
	FUNC1(&codec->delayed_work, wm8753_work);

	ret = FUNC14(codec);
	if (ret < 0) {
		FUNC3(codec->dev, "Failed to issue reset\n");
		goto err;
	}

	/* charge output caps */
	FUNC15(codec, SND_SOC_BIAS_PREPARE);
	FUNC9(&codec->delayed_work,
			      FUNC6(caps_charge));

	/* set the update bits */
	reg = FUNC13(codec, WM8753_LDAC);
	FUNC16(codec, WM8753_LDAC, reg | 0x0100);
	reg = FUNC13(codec, WM8753_RDAC);
	FUNC16(codec, WM8753_RDAC, reg | 0x0100);
	reg = FUNC13(codec, WM8753_LADC);
	FUNC16(codec, WM8753_LADC, reg | 0x0100);
	reg = FUNC13(codec, WM8753_RADC);
	FUNC16(codec, WM8753_RADC, reg | 0x0100);
	reg = FUNC13(codec, WM8753_LOUT1V);
	FUNC16(codec, WM8753_LOUT1V, reg | 0x0100);
	reg = FUNC13(codec, WM8753_ROUT1V);
	FUNC16(codec, WM8753_ROUT1V, reg | 0x0100);
	reg = FUNC13(codec, WM8753_LOUT2V);
	FUNC16(codec, WM8753_LOUT2V, reg | 0x0100);
	reg = FUNC13(codec, WM8753_ROUT2V);
	FUNC16(codec, WM8753_ROUT2V, reg | 0x0100);
	reg = FUNC13(codec, WM8753_LINVOL);
	FUNC16(codec, WM8753_LINVOL, reg | 0x0100);
	reg = FUNC13(codec, WM8753_RINVOL);
	FUNC16(codec, WM8753_RINVOL, reg | 0x0100);

	wm8753_codec = codec;

	for (i = 0; i < FUNC0(wm8753_dai); i++)
		wm8753_dai[i].dev = codec->dev;

	ret = FUNC10(codec);
	if (ret != 0) {
		FUNC3(codec->dev, "Failed to register codec: %d\n", ret);
		goto err;
	}

	ret = FUNC11(&wm8753_dai[0], FUNC0(wm8753_dai));
	if (ret != 0) {
		FUNC3(codec->dev, "Failed to register DAIs: %d\n", ret);
		goto err_codec;
	}

	return 0;

err_codec:
	FUNC8(&codec->delayed_work);
	FUNC12(codec);
err:
	FUNC4(wm8753);
	return ret;
}