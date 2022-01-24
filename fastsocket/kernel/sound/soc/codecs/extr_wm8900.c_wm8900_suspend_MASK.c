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
struct wm8900_priv {int fll_out; int fll_in; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {struct wm8900_priv* private_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct snd_soc_device* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev, pm_message_t state)
{
	struct snd_soc_device *socdev = FUNC1(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;
	struct wm8900_priv *wm8900 = codec->private_data;
	int fll_out = wm8900->fll_out;
	int fll_in  = wm8900->fll_in;
	int ret;

	/* Stop the FLL in an orderly fashion */
	ret = FUNC3(codec, 0, 0, 0);
	if (ret != 0) {
		FUNC0(&pdev->dev, "Failed to stop FLL\n");
		return ret;
	}

	wm8900->fll_out = fll_out;
	wm8900->fll_in = fll_in;

	FUNC2(codec, SND_SOC_BIAS_OFF);

	return 0;
}