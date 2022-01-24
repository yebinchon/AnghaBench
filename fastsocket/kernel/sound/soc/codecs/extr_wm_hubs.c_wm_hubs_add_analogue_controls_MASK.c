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
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int WM8993_HPOUT1L_ZC ; 
 int WM8993_HPOUT1R_ZC ; 
 int WM8993_HPOUT1_VU ; 
 int WM8993_IN1_VU ; 
 int WM8993_IN2_VU ; 
 int /*<<< orphan*/  WM8993_LEFT_LINE_INPUT_1_2_VOLUME ; 
 int /*<<< orphan*/  WM8993_LEFT_LINE_INPUT_3_4_VOLUME ; 
 int /*<<< orphan*/  WM8993_LEFT_OPGA_VOLUME ; 
 int /*<<< orphan*/  WM8993_LEFT_OUTPUT_VOLUME ; 
 int WM8993_MIXOUTL_ZC ; 
 int WM8993_MIXOUTR_ZC ; 
 int WM8993_MIXOUT_VU ; 
 int /*<<< orphan*/  WM8993_RIGHT_LINE_INPUT_1_2_VOLUME ; 
 int /*<<< orphan*/  WM8993_RIGHT_LINE_INPUT_3_4_VOLUME ; 
 int /*<<< orphan*/  WM8993_RIGHT_OPGA_VOLUME ; 
 int /*<<< orphan*/  WM8993_RIGHT_OUTPUT_VOLUME ; 
 int /*<<< orphan*/  WM8993_SPEAKER_VOLUME_RIGHT ; 
 int WM8993_SPKOUT_VU ; 
 int /*<<< orphan*/  analogue_dapm_widgets ; 
 int /*<<< orphan*/  analogue_snd_controls ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int,int) ; 

int FUNC4(struct snd_soc_codec *codec)
{
	/* Latch volume update bits & default ZC on */
	FUNC3(codec, WM8993_LEFT_LINE_INPUT_1_2_VOLUME,
			    WM8993_IN1_VU, WM8993_IN1_VU);
	FUNC3(codec, WM8993_RIGHT_LINE_INPUT_1_2_VOLUME,
			    WM8993_IN1_VU, WM8993_IN1_VU);
	FUNC3(codec, WM8993_LEFT_LINE_INPUT_3_4_VOLUME,
			    WM8993_IN2_VU, WM8993_IN2_VU);
	FUNC3(codec, WM8993_RIGHT_LINE_INPUT_3_4_VOLUME,
			    WM8993_IN2_VU, WM8993_IN2_VU);

	FUNC3(codec, WM8993_SPEAKER_VOLUME_RIGHT,
			    WM8993_SPKOUT_VU, WM8993_SPKOUT_VU);

	FUNC3(codec, WM8993_LEFT_OUTPUT_VOLUME,
			    WM8993_HPOUT1L_ZC, WM8993_HPOUT1L_ZC);
	FUNC3(codec, WM8993_RIGHT_OUTPUT_VOLUME,
			    WM8993_HPOUT1_VU | WM8993_HPOUT1R_ZC,
			    WM8993_HPOUT1_VU | WM8993_HPOUT1R_ZC);

	FUNC3(codec, WM8993_LEFT_OPGA_VOLUME,
			    WM8993_MIXOUTL_ZC, WM8993_MIXOUTL_ZC);
	FUNC3(codec, WM8993_RIGHT_OPGA_VOLUME,
			    WM8993_MIXOUTR_ZC | WM8993_MIXOUT_VU,
			    WM8993_MIXOUTR_ZC | WM8993_MIXOUT_VU);

	FUNC1(codec, analogue_snd_controls,
			     FUNC0(analogue_snd_controls));

	FUNC2(codec, analogue_dapm_widgets,
				  FUNC0(analogue_dapm_widgets));
	return 0;
}