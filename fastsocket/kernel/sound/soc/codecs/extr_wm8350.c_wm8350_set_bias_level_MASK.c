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
typedef  int u16 ;
struct wm8350_data {int /*<<< orphan*/  supplies; } ;
struct wm8350_audio_platform_data {int codec_current_on; int dis_out1; int dis_out2; int dis_out3; int dis_out4; int vmid_s_curve; int codec_current_charge; int codec_current_standby; int /*<<< orphan*/  drain_msecs; int /*<<< orphan*/  vmid_discharge_msecs; int /*<<< orphan*/  vmid_charge_msecs; int /*<<< orphan*/  cap_discharge_msecs; } ;
struct TYPE_2__ {struct wm8350_audio_platform_data* platform_data; } ;
struct wm8350 {TYPE_1__ codec; } ;
struct snd_soc_codec {int bias_level; struct wm8350_data* private_data; struct wm8350* control_data; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8350_ANTI_POP_CONTROL ; 
 int WM8350_BIASEN ; 
 int WM8350_CODEC_ISEL_MASK ; 
 int /*<<< orphan*/  WM8350_DAC_MUTE ; 
 int WM8350_DAC_MUTE_ENA ; 
 int /*<<< orphan*/  WM8350_LOUT1_VOLUME ; 
 int /*<<< orphan*/  WM8350_LOUT2_VOLUME ; 
 int WM8350_OUT1L_ENA ; 
 int WM8350_OUT1R_ENA ; 
 int WM8350_OUT2L_ENA ; 
 int WM8350_OUT2R_ENA ; 
 int WM8350_OUTPUT_DRAIN_EN ; 
 int /*<<< orphan*/  WM8350_POWER_MGMT_1 ; 
 int /*<<< orphan*/  WM8350_POWER_MGMT_3 ; 
 int /*<<< orphan*/  WM8350_POWER_MGMT_4 ; 
 int /*<<< orphan*/  WM8350_ROUT1_VOLUME ; 
 int /*<<< orphan*/  WM8350_ROUT2_VOLUME ; 
 int WM8350_SYSCLK_ENA ; 
 int WM8350_VBUFEN ; 
 int WM8350_VMIDEN ; 
 int WM8350_VMID_300K ; 
 int WM8350_VMID_50K ; 
 int WM8350_VMID_5K ; 
 int WM8350_VMID_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wm8350*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wm8350*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wm8350*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_codec *codec,
				 enum snd_soc_bias_level level)
{
	struct wm8350 *wm8350 = codec->control_data;
	struct wm8350_data *priv = codec->private_data;
	struct wm8350_audio_platform_data *platform =
		wm8350->codec.platform_data;
	u16 pm1;
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		pm1 = FUNC6(wm8350, WM8350_POWER_MGMT_1) &
		    ~(WM8350_VMID_MASK | WM8350_CODEC_ISEL_MASK);
		FUNC7(wm8350, WM8350_POWER_MGMT_1,
				 pm1 | WM8350_VMID_50K |
				 platform->codec_current_on << 14);
		break;

	case SND_SOC_BIAS_PREPARE:
		pm1 = FUNC6(wm8350, WM8350_POWER_MGMT_1);
		pm1 &= ~WM8350_VMID_MASK;
		FUNC7(wm8350, WM8350_POWER_MGMT_1,
				 pm1 | WM8350_VMID_50K);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (codec->bias_level == SND_SOC_BIAS_OFF) {
			ret = FUNC3(FUNC0(priv->supplies),
						    priv->supplies);
			if (ret != 0)
				return ret;

			/* Enable the system clock */
			FUNC8(wm8350, WM8350_POWER_MGMT_4,
					WM8350_SYSCLK_ENA);

			/* mute DAC & outputs */
			FUNC8(wm8350, WM8350_DAC_MUTE,
					WM8350_DAC_MUTE_ENA);

			/* discharge cap memory */
			FUNC7(wm8350, WM8350_ANTI_POP_CONTROL,
					 platform->dis_out1 |
					 (platform->dis_out2 << 2) |
					 (platform->dis_out3 << 4) |
					 (platform->dis_out4 << 6));

			/* wait for discharge */
			FUNC4(FUNC1
						       (platform->
							cap_discharge_msecs));

			/* enable antipop */
			FUNC7(wm8350, WM8350_ANTI_POP_CONTROL,
					 (platform->vmid_s_curve << 8));

			/* ramp up vmid */
			FUNC7(wm8350, WM8350_POWER_MGMT_1,
					 (platform->
					  codec_current_charge << 14) |
					 WM8350_VMID_5K | WM8350_VMIDEN |
					 WM8350_VBUFEN);

			/* wait for vmid */
			FUNC4(FUNC1
						       (platform->
							vmid_charge_msecs));

			/* turn on vmid 300k  */
			pm1 = FUNC6(wm8350, WM8350_POWER_MGMT_1) &
			    ~(WM8350_VMID_MASK | WM8350_CODEC_ISEL_MASK);
			pm1 |= WM8350_VMID_300K |
				(platform->codec_current_standby << 14);
			FUNC7(wm8350, WM8350_POWER_MGMT_1,
					 pm1);


			/* enable analogue bias */
			pm1 |= WM8350_BIASEN;
			FUNC7(wm8350, WM8350_POWER_MGMT_1, pm1);

			/* disable antipop */
			FUNC7(wm8350, WM8350_ANTI_POP_CONTROL, 0);

		} else {
			/* turn on vmid 300k and reduce current */
			pm1 = FUNC6(wm8350, WM8350_POWER_MGMT_1) &
			    ~(WM8350_VMID_MASK | WM8350_CODEC_ISEL_MASK);
			FUNC7(wm8350, WM8350_POWER_MGMT_1,
					 pm1 | WM8350_VMID_300K |
					 (platform->
					  codec_current_standby << 14));

		}
		break;

	case SND_SOC_BIAS_OFF:

		/* mute DAC & enable outputs */
		FUNC8(wm8350, WM8350_DAC_MUTE, WM8350_DAC_MUTE_ENA);

		FUNC8(wm8350, WM8350_POWER_MGMT_3,
				WM8350_OUT1L_ENA | WM8350_OUT1R_ENA |
				WM8350_OUT2L_ENA | WM8350_OUT2R_ENA);

		/* enable anti pop S curve */
		FUNC7(wm8350, WM8350_ANTI_POP_CONTROL,
				 (platform->vmid_s_curve << 8));

		/* turn off vmid  */
		pm1 = FUNC6(wm8350, WM8350_POWER_MGMT_1) &
		    ~WM8350_VMIDEN;
		FUNC7(wm8350, WM8350_POWER_MGMT_1, pm1);

		/* wait */
		FUNC4(FUNC1
					       (platform->
						vmid_discharge_msecs));

		FUNC7(wm8350, WM8350_ANTI_POP_CONTROL,
				 (platform->vmid_s_curve << 8) |
				 platform->dis_out1 |
				 (platform->dis_out2 << 2) |
				 (platform->dis_out3 << 4) |
				 (platform->dis_out4 << 6));

		/* turn off VBuf and drain */
		pm1 = FUNC6(wm8350, WM8350_POWER_MGMT_1) &
		    ~(WM8350_VBUFEN | WM8350_VMID_MASK);
		FUNC7(wm8350, WM8350_POWER_MGMT_1,
				 pm1 | WM8350_OUTPUT_DRAIN_EN);

		/* wait */
		FUNC4(FUNC1
					       (platform->drain_msecs));

		pm1 &= ~WM8350_BIASEN;
		FUNC7(wm8350, WM8350_POWER_MGMT_1, pm1);

		/* disable anti-pop */
		FUNC7(wm8350, WM8350_ANTI_POP_CONTROL, 0);

		FUNC5(wm8350, WM8350_LOUT1_VOLUME,
				  WM8350_OUT1L_ENA);
		FUNC5(wm8350, WM8350_ROUT1_VOLUME,
				  WM8350_OUT1R_ENA);
		FUNC5(wm8350, WM8350_LOUT2_VOLUME,
				  WM8350_OUT2L_ENA);
		FUNC5(wm8350, WM8350_ROUT2_VOLUME,
				  WM8350_OUT2R_ENA);

		/* disable clock gen */
		FUNC5(wm8350, WM8350_POWER_MGMT_4,
				  WM8350_SYSCLK_ENA);

		FUNC2(FUNC0(priv->supplies),
				       priv->supplies);
		break;
	}
	codec->bias_level = level;
	return 0;
}