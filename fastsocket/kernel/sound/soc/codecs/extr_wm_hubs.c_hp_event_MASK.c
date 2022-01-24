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
struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMU 129 
#define  SND_SOC_DAPM_PRE_PMD 128 
 int /*<<< orphan*/  WM8993_ANALOGUE_HP_0 ; 
 int /*<<< orphan*/  WM8993_CHARGE_PUMP_1 ; 
 int WM8993_CP_ENA ; 
 int WM8993_DCS_ENA_CHAN_0 ; 
 int WM8993_DCS_ENA_CHAN_1 ; 
 int WM8993_DCS_TRIG_STARTUP_0 ; 
 int WM8993_DCS_TRIG_STARTUP_1 ; 
 int /*<<< orphan*/  WM8993_DC_SERVO_0 ; 
 unsigned int WM8993_HPOUT1L_DLY ; 
 int WM8993_HPOUT1L_ENA ; 
 unsigned int WM8993_HPOUT1L_OUTP ; 
 unsigned int WM8993_HPOUT1L_RMV_SHORT ; 
 unsigned int WM8993_HPOUT1R_DLY ; 
 int WM8993_HPOUT1R_ENA ; 
 unsigned int WM8993_HPOUT1R_OUTP ; 
 unsigned int WM8993_HPOUT1R_RMV_SHORT ; 
 int /*<<< orphan*/  WM8993_POWER_MANAGEMENT_1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
		    struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_codec *codec = w->codec;
	unsigned int reg = FUNC1(codec, WM8993_ANALOGUE_HP_0);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		FUNC2(codec, WM8993_CHARGE_PUMP_1,
				    WM8993_CP_ENA, WM8993_CP_ENA);

		FUNC0(5);

		FUNC2(codec, WM8993_POWER_MANAGEMENT_1,
				    WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA,
				    WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA);

		reg |= WM8993_HPOUT1L_DLY | WM8993_HPOUT1R_DLY;
		FUNC3(codec, WM8993_ANALOGUE_HP_0, reg);

		/* Start the DC servo */
		FUNC2(codec, WM8993_DC_SERVO_0,
				    0xFFFF,
				    WM8993_DCS_ENA_CHAN_0 |
				    WM8993_DCS_ENA_CHAN_1 |
				    WM8993_DCS_TRIG_STARTUP_1 |
				    WM8993_DCS_TRIG_STARTUP_0);
		FUNC4(codec);

		reg |= WM8993_HPOUT1R_OUTP | WM8993_HPOUT1R_RMV_SHORT |
			WM8993_HPOUT1L_OUTP | WM8993_HPOUT1L_RMV_SHORT;
		FUNC3(codec, WM8993_ANALOGUE_HP_0, reg);
		break;

	case SND_SOC_DAPM_PRE_PMD:
		reg &= ~(WM8993_HPOUT1L_RMV_SHORT |
			 WM8993_HPOUT1L_DLY |
			 WM8993_HPOUT1L_OUTP |
			 WM8993_HPOUT1R_RMV_SHORT |
			 WM8993_HPOUT1R_DLY |
			 WM8993_HPOUT1R_OUTP);

		FUNC2(codec, WM8993_DC_SERVO_0,
				    0xffff, 0);

		FUNC3(codec, WM8993_ANALOGUE_HP_0, reg);
		FUNC2(codec, WM8993_POWER_MANAGEMENT_1,
				    WM8993_HPOUT1L_ENA | WM8993_HPOUT1R_ENA,
				    0);

		FUNC2(codec, WM8993_CHARGE_PUMP_1,
				    WM8993_CP_ENA, 0);
		break;
	}

	return 0;
}