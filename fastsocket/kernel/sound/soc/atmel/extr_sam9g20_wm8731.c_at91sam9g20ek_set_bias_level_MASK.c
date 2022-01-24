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
struct snd_soc_card {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mclk ; 

__attribute__((used)) static int FUNC2(struct snd_soc_card *card,
					enum snd_soc_bias_level level)
{
	static int mclk_on;
	int ret = 0;

	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
		if (!mclk_on)
			ret = FUNC1(mclk);
		if (ret == 0)
			mclk_on = 1;
		break;

	case SND_SOC_BIAS_OFF:
	case SND_SOC_BIAS_STANDBY:
		if (mclk_on)
			FUNC0(mclk);
		mclk_on = 0;
		break;
	}

	return ret;
}