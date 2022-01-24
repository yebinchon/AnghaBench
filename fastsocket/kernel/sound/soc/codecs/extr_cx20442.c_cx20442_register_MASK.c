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
struct snd_soc_codec {char* name; int num_dai; int /*<<< orphan*/  dev; int /*<<< orphan*/  bias_level; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  reg_cache_size; int /*<<< orphan*/ * reg_cache; TYPE_1__* dai; struct cx20442_priv* private_data; int /*<<< orphan*/  owner; int /*<<< orphan*/  dapm_paths; int /*<<< orphan*/  dapm_widgets; int /*<<< orphan*/  mutex; } ;
struct cx20442_priv {int /*<<< orphan*/  reg_cache; struct snd_soc_codec codec; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct snd_soc_codec* cx20442_codec ; 
 TYPE_1__ cx20442_dai ; 
 int /*<<< orphan*/  cx20442_read_reg_cache ; 
 int /*<<< orphan*/  cx20442_write ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cx20442_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct snd_soc_codec*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC8(struct cx20442_priv *cx20442)
{
	struct snd_soc_codec *codec = &cx20442->codec;
	int ret;

	FUNC4(&codec->mutex);
	FUNC1(&codec->dapm_widgets);
	FUNC1(&codec->dapm_paths);

	codec->name = "CX20442";
	codec->owner = THIS_MODULE;
	codec->private_data = cx20442;

	codec->dai = &cx20442_dai;
	codec->num_dai = 1;

	codec->reg_cache = &cx20442->reg_cache;
	codec->reg_cache_size = FUNC0(cx20442->reg_cache);
	codec->read = cx20442_read_reg_cache;
	codec->write = cx20442_write;

	codec->bias_level = SND_SOC_BIAS_OFF;

	cx20442_dai.dev = codec->dev;

	cx20442_codec = codec;

	ret = FUNC5(codec);
	if (ret != 0) {
		FUNC2(codec->dev, "Failed to register codec: %d\n", ret);
		goto err;
	}

	ret = FUNC6(&cx20442_dai);
	if (ret != 0) {
		FUNC2(codec->dev, "Failed to register DAI: %d\n", ret);
		goto err_codec;
	}

	return 0;

err_codec:
	FUNC7(codec);
err:
	cx20442_codec = NULL;
	FUNC3(cx20442);
	return ret;
}