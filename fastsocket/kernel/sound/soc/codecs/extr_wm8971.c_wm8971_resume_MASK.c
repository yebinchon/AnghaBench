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
typedef  int u8 ;
typedef  int u16 ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_codec {int* reg_cache; scalar_t__ suspend_bias_level; int /*<<< orphan*/  delayed_work; scalar_t__ bias_level; int /*<<< orphan*/  control_data; int /*<<< orphan*/  (* hw_write ) (int /*<<< orphan*/ ,int*,int) ;} ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SND_SOC_BIAS_ON ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int /*<<< orphan*/  WM8971_PWR1 ; 
 int WM8971_RESET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct snd_soc_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  wm8971_reg ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm8971_workq ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC2(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;
	int i;
	u8 data[2];
	u16 *cache = codec->reg_cache;
	u16 reg;

	/* Sync reg_cache with the hardware */
	for (i = 0; i < FUNC0(wm8971_reg); i++) {
		if (i + 1 == WM8971_RESET)
			continue;
		data[0] = (i << 1) | ((cache[i] >> 8) & 0x0001);
		data[1] = cache[i] & 0x00ff;
		codec->hw_write(codec->control_data, data, 2);
	}

	FUNC7(codec, SND_SOC_BIAS_STANDBY);

	/* charge wm8971 caps */
	if (codec->suspend_bias_level == SND_SOC_BIAS_ON) {
		reg = FUNC4(codec, WM8971_PWR1) & 0xfe3e;
		FUNC5(codec, WM8971_PWR1, reg | 0x01c0);
		codec->bias_level = SND_SOC_BIAS_ON;
		FUNC3(wm8971_workq, &codec->delayed_work,
			FUNC1(1000));
	}

	return 0;
}