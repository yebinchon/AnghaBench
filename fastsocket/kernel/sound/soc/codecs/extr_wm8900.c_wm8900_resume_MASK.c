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
typedef  int /*<<< orphan*/  wm8900_reg_defaults ;
typedef  int /*<<< orphan*/  u16 ;
struct wm8900_priv {int fll_out; int fll_in; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int /*<<< orphan*/  reg_cache; struct wm8900_priv* private_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int WM8900_MAXREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct snd_soc_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_soc_codec*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC3(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;
	struct wm8900_priv *wm8900 = codec->private_data;
	u16 *cache;
	int i, ret;

	cache = FUNC2(codec->reg_cache, sizeof(wm8900_reg_defaults),
			GFP_KERNEL);

	FUNC5(codec);
	FUNC6(codec, SND_SOC_BIAS_STANDBY);

	/* Restart the FLL? */
	if (wm8900->fll_out) {
		int fll_out = wm8900->fll_out;
		int fll_in  = wm8900->fll_in;

		wm8900->fll_in = 0;
		wm8900->fll_out = 0;

		ret = FUNC7(codec, 0, fll_in, fll_out);
		if (ret != 0) {
			FUNC0(&pdev->dev, "Failed to restart FLL\n");
			return ret;
		}
	}

	if (cache) {
		for (i = 0; i < WM8900_MAXREG; i++)
			FUNC4(codec, i, cache[i]);
		FUNC1(cache);
	} else
		FUNC0(&pdev->dev, "Unable to allocate register cache\n");

	return 0;
}