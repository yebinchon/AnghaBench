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
struct twl4030_priv {int /*<<< orphan*/  bypass_state; } ;
struct snd_soc_codec {int bias_level; struct twl4030_priv* private_data; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_codec *codec,
				  enum snd_soc_bias_level level)
{
	struct twl4030_priv *twl4030 = codec->private_data;

	switch (level) {
	case SND_SOC_BIAS_ON:
		FUNC0(codec, 0);
		break;
	case SND_SOC_BIAS_PREPARE:
		FUNC2(codec);
		if (twl4030->bypass_state)
			FUNC0(codec, 0);
		else
			FUNC0(codec, 1);
		break;
	case SND_SOC_BIAS_STANDBY:
		FUNC2(codec);
		if (twl4030->bypass_state)
			FUNC0(codec, 0);
		else
			FUNC0(codec, 1);
		break;
	case SND_SOC_BIAS_OFF:
		FUNC1(codec);
		break;
	}
	codec->bias_level = level;

	return 0;
}