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
struct auto_pin_cfg {int /*<<< orphan*/  dig_in_pin; int /*<<< orphan*/ * dig_out_pins; } ;
struct ca0132_spec {int num_outputs; int num_inputs; int num_init_verbs; int /*<<< orphan*/ * init_verbs; int /*<<< orphan*/  dig_in; int /*<<< orphan*/ * adcs; int /*<<< orphan*/ * input_pins; int /*<<< orphan*/  dig_out; int /*<<< orphan*/ * dacs; int /*<<< orphan*/ * out_pins; int /*<<< orphan*/  base_init_verbs; int /*<<< orphan*/  curr_chip_addx; int /*<<< orphan*/  dsp_state; struct auto_pin_cfg autocfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_DOWNLOAD_INIT ; 
 int /*<<< orphan*/  INVALID_CHIP_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC13 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC14 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC15 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	struct auto_pin_cfg *cfg = &spec->autocfg;
	int i;

	spec->dsp_state = DSP_DOWNLOAD_INIT;
	spec->curr_chip_addx = INVALID_CHIP_ADDRESS;

	FUNC14(codec);

	FUNC4(codec);
	FUNC3(codec);
	FUNC15(codec, spec->base_init_verbs);
	FUNC0(codec);
	FUNC6(codec);
	FUNC9(codec);
	FUNC1(codec);
	FUNC2(codec);

	for (i = 0; i < spec->num_outputs; i++)
		FUNC11(codec, spec->out_pins[i], spec->dacs[0]);

	FUNC11(codec, cfg->dig_out_pins[0], spec->dig_out);

	for (i = 0; i < spec->num_inputs; i++)
		FUNC10(codec, spec->input_pins[i], spec->adcs[i]);

	FUNC10(codec, cfg->dig_in_pin, spec->dig_in);

	for (i = 0; i < spec->num_init_verbs; i++)
		FUNC15(codec, spec->init_verbs[i]);

	FUNC5(codec);

	FUNC8(codec);
	FUNC7(codec);

	FUNC12(codec);

	FUNC13(codec);

	return 0;
}