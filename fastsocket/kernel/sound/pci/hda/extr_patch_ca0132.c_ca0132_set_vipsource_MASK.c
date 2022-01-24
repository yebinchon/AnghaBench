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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {scalar_t__ dsp_state; scalar_t__ cur_mic_type; int /*<<< orphan*/ * effects_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_PARAM_VIP_SOURCE ; 
 size_t CRYSTAL_VOICE ; 
 scalar_t__ DIGITAL_MIC ; 
 scalar_t__ DSP_DOWNLOADED ; 
 size_t EFFECT_START_NID ; 
 unsigned int FLOAT_ONE ; 
 unsigned int FLOAT_TWO ; 
 unsigned int FLOAT_ZERO ; 
 int /*<<< orphan*/  MEM_CONNID_MICIN1 ; 
 int /*<<< orphan*/  MEM_CONNID_MICOUT1 ; 
 int /*<<< orphan*/  SR_16_000 ; 
 int /*<<< orphan*/  SR_96_000 ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec, int val)
{
	struct ca0132_spec *spec = codec->spec;
	unsigned int tmp;

	if (spec->dsp_state != DSP_DOWNLOADED)
		return 0;

	/* if CrystalVoice if off, vipsource should be 0 */
	if (!spec->effects_switch[CRYSTAL_VOICE - EFFECT_START_NID] ||
	    (val == 0)) {
		FUNC1(codec, CONTROL_PARAM_VIP_SOURCE, 0);
		FUNC0(codec, MEM_CONNID_MICIN1, SR_96_000);
		FUNC0(codec, MEM_CONNID_MICOUT1, SR_96_000);
		if (spec->cur_mic_type == DIGITAL_MIC)
			tmp = FLOAT_TWO;
		else
			tmp = FLOAT_ONE;
		FUNC2(codec, 0x80, 0x00, tmp);
		tmp = FLOAT_ZERO;
		FUNC2(codec, 0x80, 0x05, tmp);
	} else {
		FUNC0(codec, MEM_CONNID_MICIN1, SR_16_000);
		FUNC0(codec, MEM_CONNID_MICOUT1, SR_16_000);
		if (spec->cur_mic_type == DIGITAL_MIC)
			tmp = FLOAT_TWO;
		else
			tmp = FLOAT_ONE;
		FUNC2(codec, 0x80, 0x00, tmp);
		tmp = FLOAT_ONE;
		FUNC2(codec, 0x80, 0x05, tmp);
		FUNC3(20);
		FUNC1(codec, CONTROL_PARAM_VIP_SOURCE, val);
	}

	return 1;
}