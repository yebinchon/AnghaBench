#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * jack; } ;
struct TYPE_5__ {int /*<<< orphan*/ * jack; } ;
struct wm8350_data {TYPE_3__ hpr; TYPE_2__ hpl; } ;
struct wm8350 {int dummy; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int /*<<< orphan*/  delayed_work; struct wm8350_data* private_data; struct wm8350* control_data; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int WM8350_CODEC_ENA ; 
 int /*<<< orphan*/  WM8350_IRQ_CODEC_JCK_DET_L ; 
 int /*<<< orphan*/  WM8350_IRQ_CODEC_JCK_DET_R ; 
 int /*<<< orphan*/  WM8350_JACK_DETECT ; 
 int WM8350_JDL_ENA ; 
 int WM8350_JDR_ENA ; 
 int /*<<< orphan*/  WM8350_POWER_MGMT_4 ; 
 int /*<<< orphan*/  WM8350_POWER_MGMT_5 ; 
 int WM8350_TOCLK_ENA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct snd_soc_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8350*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC2(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;
	struct wm8350 *wm8350 = codec->control_data;
	struct wm8350_data *priv = codec->private_data;
	int ret;

	FUNC4(wm8350, WM8350_JACK_DETECT,
			  WM8350_JDL_ENA | WM8350_JDR_ENA);
	FUNC4(wm8350, WM8350_POWER_MGMT_4, WM8350_TOCLK_ENA);

	FUNC6(wm8350, WM8350_IRQ_CODEC_JCK_DET_L);
	FUNC6(wm8350, WM8350_IRQ_CODEC_JCK_DET_R);
	FUNC5(wm8350, WM8350_IRQ_CODEC_JCK_DET_L);
	FUNC5(wm8350, WM8350_IRQ_CODEC_JCK_DET_R);

	priv->hpl.jack = NULL;
	priv->hpr.jack = NULL;

	/* cancel any work waiting to be queued. */
	ret = FUNC0(&codec->delayed_work);

	/* if there was any work waiting then we run it now and
	 * wait for its completion */
	if (ret) {
		FUNC3(&codec->delayed_work, 0);
		FUNC1();
	}

	FUNC7(codec, SND_SOC_BIAS_OFF);

	FUNC4(wm8350, WM8350_POWER_MGMT_5, WM8350_CODEC_ENA);

	return 0;
}