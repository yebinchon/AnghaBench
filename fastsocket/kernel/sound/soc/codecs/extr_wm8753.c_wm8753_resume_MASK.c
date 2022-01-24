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
struct snd_soc_codec {int* reg_cache; scalar_t__ suspend_bias_level; int /*<<< orphan*/  delayed_work; scalar_t__ bias_level; int /*<<< orphan*/  control_data; int /*<<< orphan*/  (* hw_write ) (int /*<<< orphan*/ ,int*,int) ;int /*<<< orphan*/  card; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ SND_SOC_BIAS_ON ; 
 int /*<<< orphan*/  SND_SOC_BIAS_PREPARE ; 
 int /*<<< orphan*/  SND_SOC_BIAS_STANDBY ; 
 int WM8753_RESET ; 
 int /*<<< orphan*/  caps_charge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct snd_soc_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int* wm8753_reg ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct snd_soc_device *socdev = FUNC2(pdev);
	struct snd_soc_codec *codec = socdev->card->codec;
	int i;
	u8 data[2];
	u16 *cache = codec->reg_cache;

	/* we only need to resume if we are a valid card */
	if (!codec->card)
		return 0;

	/* Sync reg_cache with the hardware */
	for (i = 0; i < FUNC0(wm8753_reg); i++) {
		if (i + 1 == WM8753_RESET)
			continue;

		/* No point in writing hardware default values back */
		if (cache[i] == wm8753_reg[i])
			continue;

		data[0] = ((i + 1) << 1) | ((cache[i] >> 8) & 0x0001);
		data[1] = cache[i] & 0x00ff;
		codec->hw_write(codec->control_data, data, 2);
	}

	FUNC5(codec, SND_SOC_BIAS_STANDBY);

	/* charge wm8753 caps */
	if (codec->suspend_bias_level == SND_SOC_BIAS_ON) {
		FUNC5(codec, SND_SOC_BIAS_PREPARE);
		codec->bias_level = SND_SOC_BIAS_ON;
		FUNC3(&codec->delayed_work,
			FUNC1(caps_charge));
	}

	return 0;
}