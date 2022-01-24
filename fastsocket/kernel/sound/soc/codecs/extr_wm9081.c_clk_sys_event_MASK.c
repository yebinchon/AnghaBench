#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wm9081_priv {int sysclk_source; int /*<<< orphan*/  mclk_rate; } ;
struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int /*<<< orphan*/  dev; struct wm9081_priv* private_data; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMD 131 
#define  SND_SOC_DAPM_PRE_PMU 130 
#define  WM9081_SYSCLK_FLL_MCLK 129 
#define  WM9081_SYSCLK_MCLK 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
			 struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_codec *codec = w->codec;
	struct wm9081_priv *wm9081 = codec->private_data;

	/* This should be done on init() for bypass paths */
	switch (wm9081->sysclk_source) {
	case WM9081_SYSCLK_MCLK:
		FUNC1(codec->dev, "Using %dHz MCLK\n", wm9081->mclk_rate);
		break;
	case WM9081_SYSCLK_FLL_MCLK:
		FUNC1(codec->dev, "Using %dHz MCLK with FLL\n",
			wm9081->mclk_rate);
		break;
	default:
		FUNC2(codec->dev, "System clock not configured\n");
		return -EINVAL;
	}

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		FUNC0(codec);
		break;

	case SND_SOC_DAPM_POST_PMD:
		/* Disable the FLL if it's running */
		FUNC3(codec, 0, 0, 0);
		break;
	}

	return 0;
}