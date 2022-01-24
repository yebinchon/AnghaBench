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
typedef  int u16 ;
struct snd_soc_codec {int bias_level; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8900_REG_ADDCTL ; 
 int WM8900_REG_ADDCTL_BIAS_SRC ; 
 int WM8900_REG_ADDCTL_TEMP_SD ; 
 int WM8900_REG_ADDCTL_VMID_SOFTST ; 
 int /*<<< orphan*/  WM8900_REG_GPIO ; 
 int WM8900_REG_GPIO_TEMP_ENA ; 
 int /*<<< orphan*/  WM8900_REG_HPCTL1 ; 
 int /*<<< orphan*/  WM8900_REG_POWER1 ; 
 int WM8900_REG_POWER1_BIAS_ENA ; 
 int WM8900_REG_POWER1_FLL_ENA ; 
 int WM8900_REG_POWER1_STARTUP_BIAS_ENA ; 
 int /*<<< orphan*/  WM8900_REG_POWER2 ; 
 int WM8900_REG_POWER2_SYSCLK_ENA ; 
 int /*<<< orphan*/  WM8900_REG_POWER3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_codec *codec,
				 enum snd_soc_bias_level level)
{
	u16 reg;

	switch (level) {
	case SND_SOC_BIAS_ON:
		/* Enable thermal shutdown */
		reg = FUNC2(codec, WM8900_REG_GPIO);
		FUNC3(codec, WM8900_REG_GPIO,
			     reg | WM8900_REG_GPIO_TEMP_ENA);
		reg = FUNC2(codec, WM8900_REG_ADDCTL);
		FUNC3(codec, WM8900_REG_ADDCTL,
			     reg | WM8900_REG_ADDCTL_TEMP_SD);
		break;

	case SND_SOC_BIAS_PREPARE:
		break;

	case SND_SOC_BIAS_STANDBY:
		/* Charge capacitors if initial power up */
		if (codec->bias_level == SND_SOC_BIAS_OFF) {
			/* STARTUP_BIAS_ENA on */
			FUNC3(codec, WM8900_REG_POWER1,
				     WM8900_REG_POWER1_STARTUP_BIAS_ENA);

			/* Startup bias mode */
			FUNC3(codec, WM8900_REG_ADDCTL,
				     WM8900_REG_ADDCTL_BIAS_SRC |
				     WM8900_REG_ADDCTL_VMID_SOFTST);

			/* VMID 2x50k */
			FUNC3(codec, WM8900_REG_POWER1,
				     WM8900_REG_POWER1_STARTUP_BIAS_ENA | 0x1);

			/* Allow capacitors to charge */
			FUNC1(FUNC0(400));

			/* Enable bias */
			FUNC3(codec, WM8900_REG_POWER1,
				     WM8900_REG_POWER1_STARTUP_BIAS_ENA |
				     WM8900_REG_POWER1_BIAS_ENA | 0x1);

			FUNC3(codec, WM8900_REG_ADDCTL, 0);

			FUNC3(codec, WM8900_REG_POWER1,
				     WM8900_REG_POWER1_BIAS_ENA | 0x1);
		}

		reg = FUNC2(codec, WM8900_REG_POWER1);
		FUNC3(codec, WM8900_REG_POWER1,
			     (reg & WM8900_REG_POWER1_FLL_ENA) |
			     WM8900_REG_POWER1_BIAS_ENA | 0x1);
		FUNC3(codec, WM8900_REG_POWER2,
			     WM8900_REG_POWER2_SYSCLK_ENA);
		FUNC3(codec, WM8900_REG_POWER3, 0);
		break;

	case SND_SOC_BIAS_OFF:
		/* Startup bias enable */
		reg = FUNC2(codec, WM8900_REG_POWER1);
		FUNC3(codec, WM8900_REG_POWER1,
			     reg & WM8900_REG_POWER1_STARTUP_BIAS_ENA);
		FUNC3(codec, WM8900_REG_ADDCTL,
			     WM8900_REG_ADDCTL_BIAS_SRC |
			     WM8900_REG_ADDCTL_VMID_SOFTST);

		/* Discharge caps */
		FUNC3(codec, WM8900_REG_POWER1,
			     WM8900_REG_POWER1_STARTUP_BIAS_ENA);
		FUNC1(FUNC0(500));

		/* Remove clamp */
		FUNC3(codec, WM8900_REG_HPCTL1, 0);

		/* Power down */
		FUNC3(codec, WM8900_REG_ADDCTL, 0);
		FUNC3(codec, WM8900_REG_POWER1, 0);
		FUNC3(codec, WM8900_REG_POWER2, 0);
		FUNC3(codec, WM8900_REG_POWER3, 0);

		/* Need to let things settle before stopping the clock
		 * to ensure that restart works, see "Stopping the
		 * master clock" in the datasheet. */
		FUNC1(FUNC0(1));
		FUNC3(codec, WM8900_REG_POWER2,
			     WM8900_REG_POWER2_SYSCLK_ENA);
		break;
	}
	codec->bias_level = level;
	return 0;
}